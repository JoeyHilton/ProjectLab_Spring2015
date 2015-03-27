require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @user = users(:one)
    @otheruser = users(:two)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    sign_in @user
    user = @otheruser
    get :show, id: user.id
    assert_response :success
  end

  test "should get profile" do
    sign_in @user
    get :profile
    assert_response :success
  end

end
