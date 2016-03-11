require 'test_helper'

class FoilCalculatorsControllerTest < ActionController::TestCase
  setup do
    @foil_calculator = foil_calculators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foil_calculators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foil_calculator" do
    assert_difference('FoilCalculator.count') do
      post :create, foil_calculator: { inches_per_parent_sheet: @foil_calculator.inches_per_parent_sheet, sheet_quantity: @foil_calculator.sheet_quantity, sheets_per_parent_sheet: @foil_calculator.sheets_per_parent_sheet }
    end

    assert_redirected_to foil_calculator_path(assigns(:foil_calculator))
  end

  test "should show foil_calculator" do
    get :show, id: @foil_calculator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foil_calculator
    assert_response :success
  end

  test "should update foil_calculator" do
    patch :update, id: @foil_calculator, foil_calculator: { inches_per_parent_sheet: @foil_calculator.inches_per_parent_sheet, sheet_quantity: @foil_calculator.sheet_quantity, sheets_per_parent_sheet: @foil_calculator.sheets_per_parent_sheet }
    assert_redirected_to foil_calculator_path(assigns(:foil_calculator))
  end

  test "should destroy foil_calculator" do
    assert_difference('FoilCalculator.count', -1) do
      delete :destroy, id: @foil_calculator
    end

    assert_redirected_to foil_calculators_path
  end
end
