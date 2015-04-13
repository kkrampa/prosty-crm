class ContactsControllerTest < ActionController::TestCase

  def setup
    @user = User.create(
        username: 'dummy',
        email: 'dummy1@dummy.com',
        password: 'dummy13',
        password_confirmation: 'dummy13'
    )
  end

  test 'should be redirected to login page' do
    get :index
    assert_redirected_to :controller => :account, :action => :form
  end

  test 'should be allowed to view list' do
    session[:current_user_id] = @user.id
    get :index
    assert_response 200
    assert_empty assigns(:contacts)
  end

  test 'should get non-empty list' do
    session[:current_user_id] = @user.id
    Contact.create(
        first_name: 'Dummy',
        last_name: 'Dummy',
        phone_number: '522552',
        users_id: @user.id
    )
    get :index
    assert_response 200
    assert_not_empty assigns(:contacts)
  end

  test 'should add contact' do
    session[:current_user_id] = @user.id
    post :create, {
                    contact: {
                        first_name: 'Dummy',
                        last_name: 'Dummy',
                        phone_number: '52255',
                        users_id: @user.id
                    }
                  }
    assert_response 302
    assert_redirected_to contacts_path
    assert Contact.all.length, 1
  end
end