require 'test_helper'

class CaLottoNumbersControllerTest < ActionController::TestCase
  setup do
    @ca_lotto_number = ca_lotto_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ca_lotto_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ca_lotto_number" do
    assert_difference('CaLottoNumber.count') do
      post :create, ca_lotto_number: { bonusNumber: @ca_lotto_number.bonusNumber, number: @ca_lotto_number.number }
    end

    assert_redirected_to ca_lotto_number_path(assigns(:ca_lotto_number))
  end

  test "should show ca_lotto_number" do
    get :show, id: @ca_lotto_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ca_lotto_number
    assert_response :success
  end

  test "should update ca_lotto_number" do
    put :update, id: @ca_lotto_number, ca_lotto_number: { bonusNumber: @ca_lotto_number.bonusNumber, number: @ca_lotto_number.number }
    assert_redirected_to ca_lotto_number_path(assigns(:ca_lotto_number))
  end

  test "should destroy ca_lotto_number" do
    assert_difference('CaLottoNumber.count', -1) do
      delete :destroy, id: @ca_lotto_number
    end

    assert_redirected_to ca_lotto_numbers_path
  end
end
