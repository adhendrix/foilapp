require 'test_helper'

class FoilItemsControllerTest < ActionController::TestCase
  setup do
    @foil_item = foil_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foil_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foil_item" do
    assert_difference('FoilItem.count') do
      post :create, foil_item: { foil_used_length: @foil_item.foil_used_length, length_id: @foil_item.length_id, make_id: @foil_item.make_id, name_id: @foil_item.name_id }
    end

    assert_redirected_to foil_item_path(assigns(:foil_item))
  end

  test "should show foil_item" do
    get :show, id: @foil_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foil_item
    assert_response :success
  end

  test "should update foil_item" do
    patch :update, id: @foil_item, foil_item: { foil_used_length: @foil_item.foil_used_length, length_id: @foil_item.length_id, make_id: @foil_item.make_id, name_id: @foil_item.name_id }
    assert_redirected_to foil_item_path(assigns(:foil_item))
  end

  test "should destroy foil_item" do
    assert_difference('FoilItem.count', -1) do
      delete :destroy, id: @foil_item
    end

    assert_redirected_to foil_items_path
  end
end
