require 'test_helper'

class SofasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sofas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sofa" do
    assert_difference('Sofa.count') do
      post :create, :sofa => { }
    end

    assert_redirected_to sofa_path(assigns(:sofa))
  end

  test "should show sofa" do
    get :show, :id => sofas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sofas(:one).to_param
    assert_response :success
  end

  test "should update sofa" do
    put :update, :id => sofas(:one).to_param, :sofa => { }
    assert_redirected_to sofa_path(assigns(:sofa))
  end

  test "should destroy sofa" do
    assert_difference('Sofa.count', -1) do
      delete :destroy, :id => sofas(:one).to_param
    end

    assert_redirected_to sofas_path
  end
end
