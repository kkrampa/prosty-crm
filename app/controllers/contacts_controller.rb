class ContactsController < ActionController::Base
  layout 'application'
  before_action :check_if_logged
  before_action :check_contact, only: [:edit, :update, :destroy]

  def index
    if params[:search]
      @contacts = Contact.where(
          'users_id=? AND (first_name like ? OR last_name like ? OR phone_number like ? OR street like ? OR city like ?
           OR post_code like ? OR number like ? OR email like ?)',
          @user.id, "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%, %#{params[:search]}%",
          "%#{params[:search]}%", "%#{params[:search]}%","%#{params[:search]}%", "%#{params[:search]}%",
          "%#{params[:search]}%"
      ).paginate(:page => params[:page])
      @search_param = params[:search]
    else
      @contacts = Contact.where(users_id: @user.id).paginate(:page => params[:page])
    end
  end

  def new
    @contact = Contact.new(users_id: @user.id)
  end

  def create
    @contact = Contact.create(contact_params)
    flash[:success] = 'Kontakt dodano pomyślnie'
    redirect_to contacts_path
  end

  def edit
  end

  def update
    @contact.update(contact_params)
    flash[:success] = 'Kontakt edytowano pomyślnie'
    redirect_to contacts_path
  end

  def destroy
    @contact.destroy
    flash[:success] = 'Kontakt usunięto pomyślnie'
    redirect_to contacts_url
  end

  private
    def check_if_logged
      if session[:current_user_id]
        @user = User.find(session[:current_user_id])
      else
        redirect_to :controller => 'account', :action => 'form'
      end
    end

    def check_contact
      @contact = Contact.find(params[:id])
      if @contact.users_id != session[:current_user_id]
        render :nothing => true, response_code => 400
      end
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :phone_number,
                                      :email, :city, :street, :number, :post_code, :users_id)
    end
end