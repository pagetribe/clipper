require 'test_helper'

class ClippingsControllerTest < ActionController::TestCase
  setup do
    @clipping = clippings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clippings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clipping" do
    assert_difference('Clipping.count') do
      post :create, :clipping => @clipping.attributes
    end

    assert_redirected_to clipping_path(assigns(:clipping))
  end

  test "should show clipping" do
    get :show, :id => @clipping.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clipping.to_param
    assert_response :success
  end

  test "should update clipping" do
    put :update, :id => @clipping.to_param, :clipping => @clipping.attributes
    assert_redirected_to clipping_path(assigns(:clipping))
  end

  test "should destroy clipping" do
    assert_difference('Clipping.count', -1) do
      delete :destroy, :id => @clipping.to_param
    end

    assert_redirected_to clippings_path
  end
end
