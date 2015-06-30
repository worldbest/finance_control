require 'test_helper'

class TypewsControllerTest < ActionController::TestCase
  setup do
    @typew = typews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typew" do
    assert_difference('Typew.count') do
      post :create, typew: { name: @typew.name }
    end

    assert_redirected_to typew_path(assigns(:typew))
  end

  test "should show typew" do
    get :show, id: @typew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typew
    assert_response :success
  end

  test "should update typew" do
    patch :update, id: @typew, typew: { name: @typew.name }
    assert_redirected_to typew_path(assigns(:typew))
  end

  test "should destroy typew" do
    assert_difference('Typew.count', -1) do
      delete :destroy, id: @typew
    end

    assert_redirected_to typews_path
  end
end
