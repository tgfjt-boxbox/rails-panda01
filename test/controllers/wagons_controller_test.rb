require 'test_helper'

class WagonsControllerTest < ActionController::TestCase
  setup do
    @wagon = wagons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wagons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wagon" do
    assert_difference('Wagon.count') do
      post :create, wagon: { email: @wagon.email, name: @wagon.name }
    end

    assert_redirected_to wagon_path(assigns(:wagon))
  end

  test "should show wagon" do
    get :show, id: @wagon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wagon
    assert_response :success
  end

  test "should update wagon" do
    patch :update, id: @wagon, wagon: { email: @wagon.email, name: @wagon.name }
    assert_redirected_to wagon_path(assigns(:wagon))
  end

  test "should destroy wagon" do
    assert_difference('Wagon.count', -1) do
      delete :destroy, id: @wagon
    end

    assert_redirected_to wagons_path
  end
end
