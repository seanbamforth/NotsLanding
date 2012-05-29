require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
