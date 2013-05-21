require 'test_helper'

class UseroksControllerTest < ActionController::TestCase
  setup do
    @userok = useroks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:useroks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userok" do
    assert_difference('Userok.count') do
      post :create, userok: { email: @userok.email, name: @userok.name }
    end

    assert_redirected_to userok_path(assigns(:userok))
  end

  test "should show userok" do
    get :show, id: @userok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userok
    assert_response :success
  end

  test "should update userok" do
    put :update, id: @userok, userok: { email: @userok.email, name: @userok.name }
    assert_redirected_to userok_path(assigns(:userok))
  end

  test "should destroy userok" do
    assert_difference('Userok.count', -1) do
      delete :destroy, id: @userok
    end

    assert_redirected_to useroks_path
  end
end
