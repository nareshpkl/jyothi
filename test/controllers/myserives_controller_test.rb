require 'test_helper'

class MyserivesControllerTest < ActionController::TestCase
  test "should get myhtml" do
    get :myhtml
    assert_response :success
  end

  test "should get myxml" do
    get :myxml
    assert_response :success
  end

end
