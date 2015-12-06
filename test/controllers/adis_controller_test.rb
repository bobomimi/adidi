require 'test_helper'

class AdisControllerTest < ActionController::TestCase
  setup do
    @adi = adis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adi" do
    assert_difference('Adi.count') do
      post :create, adi: { name: @adi.name }
    end

    assert_redirected_to adi_path(assigns(:adi))
  end

  test "should show adi" do
    get :show, id: @adi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adi
    assert_response :success
  end

  test "should update adi" do
    patch :update, id: @adi, adi: { name: @adi.name }
    assert_redirected_to adi_path(assigns(:adi))
  end

  test "should destroy adi" do
    assert_difference('Adi.count', -1) do
      delete :destroy, id: @adi
    end

    assert_redirected_to adis_path
  end
end
