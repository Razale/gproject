require 'test_helper'

class CoffeeTablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffee_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee_table" do
    assert_difference('CoffeeTable.count') do
      post :create, :coffee_table => { }
    end

    assert_redirected_to coffee_table_path(assigns(:coffee_table))
  end

  test "should show coffee_table" do
    get :show, :id => coffee_tables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => coffee_tables(:one).to_param
    assert_response :success
  end

  test "should update coffee_table" do
    put :update, :id => coffee_tables(:one).to_param, :coffee_table => { }
    assert_redirected_to coffee_table_path(assigns(:coffee_table))
  end

  test "should destroy coffee_table" do
    assert_difference('CoffeeTable.count', -1) do
      delete :destroy, :id => coffee_tables(:one).to_param
    end

    assert_redirected_to coffee_tables_path
  end
end
