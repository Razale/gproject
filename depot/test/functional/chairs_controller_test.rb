require 'test_helper'

class ChairsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chair" do
    assert_difference('Chair.count') do
      post :create, :chair => { }
    end

    assert_redirected_to chair_path(assigns(:chair))
  end

  test "should show chair" do
    get :show, :id => chairs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => chairs(:one).to_param
    assert_response :success
  end

  test "should update chair" do
    put :update, :id => chairs(:one).to_param, :chair => { }
    assert_redirected_to chair_path(assigns(:chair))
  end

  test "should destroy chair" do
    assert_difference('Chair.count', -1) do
      delete :destroy, :id => chairs(:one).to_param
    end

    assert_redirected_to chairs_path
  end
end
