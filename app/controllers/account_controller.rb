class AccountController < ActionController::Base
  layout 'application'

  def form
    @user = User.new
  end

  def login
    user = User.find_by_username(login_params[:username])
    if user and user.authenticate(login_params[:password])
      session[:current_user_id] = user.id
      flash[:error] = ''
      redirect_to contacts_path
    else
      flash[:error] = 'Błędny login'
      render :form, :status => :bad_request
    end
  end

  def register_form
    @user = User.new
  end

  def register
    @user = User.new(register_params)
    if @user.valid?
      @user.save
      redirect_to login_path
    else
      render :register_form, :status => :bad_request
    end
  end

  def logout
    @_current_user = session[:current_user_id] = nil
    redirect_to login_path
  end

  private
  def login_params
    params.permit(:username, :password)
  end

  def register_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end