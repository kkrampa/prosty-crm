require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: 'test',
                   password: 'test12', password_confirmation: 'test12')
  end

  test 'user with different passwords should be invalid' do
    user = User.new(username: 'test', password: 'test12', password_confirmation: 'test15')
    assert_not user.valid?
  end

  test 'user without password should be invalid' do
    user = User.new(username: 'test')
    assert_not user.valid?
  end

  test 'should be valid' do
    user = User.new(username: 'test',
                    password: 'test12', password_confirmation: 'test12')
    assert user.valid?
  end

  test 'password should be longer than 6' do
    user = User.new(username: 'test',
                    password: 'test', password_confirmation: 'test')
    assert_not user.valid?
  end

  test 'should be saved' do
    assert @user.save
  end

  test 'username should be unique' do
    user2 = @user.dup
    assert user2.valid?
    @user.save
    assert_not user2.valid?
  end

end
