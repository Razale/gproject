require 'test_helper'

class LightingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lightings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lighting" do
    assert_difference('Lighting.count') do
      post :create, :lighting => { }
    end

    assert_redirected_to lighting_path(assigns(:lighting))
  end

  test "should show lighting" do
    get :show, :id => lightings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lightings(:one).to_param
    assert_response :success
  end

  test "should update lighting" do
    put :update, :id => lightings(:one).to_param, :lighting => { }
    assert_redirected_to lighting_path(assigns(:lighting))
  end

  test "should destroy lighting" do
    assert_difference('Lighting.count', -1) do
      delete :destroy, :id => lightings(:one).to_param
    end

    assert_redirected_to lightings_path
  end
end
