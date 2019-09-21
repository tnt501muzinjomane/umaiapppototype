require 'test_helper'

class RtablesControllerTest < ActionController::TestCase
  setup do
    @rtable = rtables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rtables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rtable" do
    assert_difference('Rtable.count') do
      post :create, rtable: { max_guest: @rtable.max_guest, min_guest: @rtable.min_guest, name: @rtable.name, restaurant_id: @rtable.restaurant_id }
    end

    assert_redirected_to rtable_path(assigns(:rtable))
  end

  test "should show rtable" do
    get :show, id: @rtable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rtable
    assert_response :success
  end

  test "should update rtable" do
    patch :update, id: @rtable, rtable: { max_guest: @rtable.max_guest, min_guest: @rtable.min_guest, name: @rtable.name, restaurant_id: @rtable.restaurant_id }
    assert_redirected_to rtable_path(assigns(:rtable))
  end

  test "should destroy rtable" do
    assert_difference('Rtable.count', -1) do
      delete :destroy, id: @rtable
    end

    assert_redirected_to rtables_path
  end
end
