require 'test_helper'

class DiningsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dining" do
    assert_difference('Dining.count') do
      post :create, :dining => { }
    end

    assert_redirected_to dining_path(assigns(:dining))
  end

  test "should show dining" do
    get :show, :id => dinings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dinings(:one).to_param
    assert_response :success
  end

  test "should update dining" do
    put :update, :id => dinings(:one).to_param, :dining => { }
    assert_redirected_to dining_path(assigns(:dining))
  end

  test "should destroy dining" do
    assert_difference('Dining.count', -1) do
      delete :destroy, :id => dinings(:one).to_param
    end

    assert_redirected_to dinings_path
  end
end
