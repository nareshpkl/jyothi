require 'test_helper'

class MyregistrationsControllerTest < ActionController::TestCase
  setup do
    @myregistration = myregistrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myregistrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myregistration" do
    assert_difference('Myregistration.count') do
      post :create, myregistration: { category: @myregistration.category, cell: @myregistration.cell, email: @myregistration.email, gender: @myregistration.gender, name: @myregistration.name, subject: @myregistration.subject }
    end

    assert_redirected_to myregistration_path(assigns(:myregistration))
  end

  test "should show myregistration" do
    get :show, id: @myregistration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myregistration
    assert_response :success
  end

  test "should update myregistration" do
    patch :update, id: @myregistration, myregistration: { category: @myregistration.category, cell: @myregistration.cell, email: @myregistration.email, gender: @myregistration.gender, name: @myregistration.name, subject: @myregistration.subject }
    assert_redirected_to myregistration_path(assigns(:myregistration))
  end

  test "should destroy myregistration" do
    assert_difference('Myregistration.count', -1) do
      delete :destroy, id: @myregistration
    end

    assert_redirected_to myregistrations_path
  end
end
