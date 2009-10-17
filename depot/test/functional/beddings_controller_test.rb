require 'test_helper'

class BeddingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beddings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bedding" do
    assert_difference('Bedding.count') do
      post :create, :bedding => { }
    end

    assert_redirected_to bedding_path(assigns(:bedding))
  end

  test "should show bedding" do
    get :show, :id => beddings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => beddings(:one).to_param
    assert_response :success
  end

  test "should update bedding" do
    put :update, :id => beddings(:one).to_param, :bedding => { }
    assert_redirected_to bedding_path(assigns(:bedding))
  end

  test "should destroy bedding" do
    assert_difference('Bedding.count', -1) do
      delete :destroy, :id => beddings(:one).to_param
    end

    assert_redirected_to beddings_path
  end
end
