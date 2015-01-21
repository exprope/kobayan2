require 'test_helper'

class TodofukensControllerTest < ActionController::TestCase
  setup do
    @todofuken = todofukens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todofukens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todofuken" do
    assert_difference('Todofuken.count') do
      post :create, todofuken: { name: @todofuken.name }
    end

    assert_redirected_to todofuken_path(assigns(:todofuken))
  end

  test "should show todofuken" do
    get :show, id: @todofuken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todofuken
    assert_response :success
  end

  test "should update todofuken" do
    patch :update, id: @todofuken, todofuken: { name: @todofuken.name }
    assert_redirected_to todofuken_path(assigns(:todofuken))
  end

  test "should destroy todofuken" do
    assert_difference('Todofuken.count', -1) do
      delete :destroy, id: @todofuken
    end

    assert_redirected_to todofukens_path
  end
end
