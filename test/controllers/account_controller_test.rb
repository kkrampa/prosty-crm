class AccountControllerTest < ActionController::TestCase

  def setup

  end

  test 'should get register form' do
    get :register_form
    assert_response :success
    user = assigns(:user)
    assert_not_nil user
  end

  test 'should return bad response' do
    post :register, user: { email: '' }
    assert_response 400
    assert_not_nil assigns :user
    user = assigns :user
    assert_not_nil user.errors
    assert user.errors.count == 4
    assert User.all.count == 0
  end

  test 'should return password confirmation fails' do
    post :register, user: {
                      username: 'dummy',
                      email: 'dummy@dummy.com',
                      password: 'dummy12',
                      password_confirmation: 'dummy13'
                    }
    assert_response 400
    user = assigns :user
    errors = user.errors
    assert_not_empty errors[:password_confirmation]
    assert_empty errors[:username]
    assert_empty errors[:password]
    assert_empty errors[:email]
    assert User.all.count == 0
  end

  test 'should register user' do
    post :register, user: {
                      username: 'dummy',
                      email: 'dummy@dummy.com',
                      password: 'dummy13',
                      password_confirmation: 'dummy13'
                    }
    assert_response 302
    assert_redirected_to :login
    user = User.all
    assert user.count == 1
    assert user[0].email == 'dummy@dummy.com'
  end

  test 'should return username in use' do
    user = User.new(
        username: 'dummy',
        email: 'dummy1@dummy.com',
        password: 'dummy13',
        password_confirmation: 'dummy13'
    )
    user.save
    post :register, user: {
                      username: 'dummy',
                      email: 'dummy@dummy.com',
                      password: 'dummy13',
                      password_confirmation: 'dummy13'
                  }
    assert_response 400
    user = assigns :user
    assert_not_nil user
    errors = user.errors
    assert_not_empty errors['username']
    assert User.all.count == 1
  end

  test 'should get login form' do
    get :form
    assert_response 200
  end

  test 'login should fails' do
    post :login, {username: 'test', password: 'test'}
    assert_response 400
  end

  test 'should return bad password' do
    User.create(
        username: 'dummy',
        email: 'dummy1@dummy.com',
        password: 'dummy13',
        password_confirmation: 'dummy13'
    )
    post :login, {username: 'dummy', password: 'wrongpassword'}
    assert_response 400
  end

  test 'should be logged in' do
    user = User.create(
        username: 'dummy',
        email: 'dummy1@dummy.com',
        password: 'dummy13',
        password_confirmation: 'dummy13'
    )
    post :login, {username: 'dummy', password: 'dummy13'}
    assert_equal session[:current_user_id], user.id
    assert_redirected_to contacts_path
  end

  test 'should be log out' do
    user = User.create(
        username: 'dummy',
        email: 'dummy1@dummy.com',
        password: 'dummy13',
        password_confirmation: 'dummy13'
    )
    post :login, {username: 'dummy', password: 'dummy13'}
    assert_equal session[:current_user_id], user.id
    assert_redirected_to contacts_path

    get :logout
    assert_nil session[:current_user_id]
  end

end