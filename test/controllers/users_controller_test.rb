require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'when valid params should create user' do
    assert_difference('User.count') do
      post users_path, params: {user: {email: 'user@example.com', password: 'password'}}
    end
  end

  test 'when invalid params should return errors' do
    post users_path, params: {user: {email: 'abc', password: ''}}
    json_response = JSON.parse response.body
    assert_equal json_response['errors'][0], "Email is invalid"
    assert_equal json_response['errors'][1], "Password can't be blank"
  end
end

