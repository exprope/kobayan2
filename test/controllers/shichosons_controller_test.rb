require 'test_helper'

class ShichosonsControllerTest < ActionController::TestCase
  setup do
    @shichoson = shichosons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shichosons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shichoson" do
    assert_difference('Shichoson.count') do
      post :create, shichoson: { name: @shichoson.name, todofuken_id: @shichoson.todofuken_id }
    end

    assert_redirected_to shichoson_path(assigns(:shichoson))
  end

  test "should show shichoson" do
    get :show, id: @shichoson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shichoson
    assert_response :success
  end

  test "should update shichoson" do
    patch :update, id: @shichoson, shichoson: { name: @shichoson.name, todofuken_id: @shichoson.todofuken_id }
    assert_redirected_to shichoson_path(assigns(:shichoson))
  end

  test "should destroy shichoson" do
    assert_difference('Shichoson.count', -1) do
      delete :destroy, id: @shichoson
    end

    assert_redirected_to shichosons_path
  end
end
