require "test_helper"

class PrealertsControllerTest < ActionController::TestCase
  def prealert
    @prealert ||= prealerts :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:prealerts)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Prealert.count") do
      post :create, prealert: { curier: prealert.curier, description: prealert.description, shop: prealert.shop, tracking_number: prealert.tracking_number, value_price: prealert.value_price }
    end

    assert_redirected_to prealert_path(assigns(:prealert))
  end

  def test_show
    get :show, id: prealert
    assert_response :success
  end

  def test_edit
    get :edit, id: prealert
    assert_response :success
  end

  def test_update
    put :update, id: prealert, prealert: { curier: prealert.curier, description: prealert.description, shop: prealert.shop, tracking_number: prealert.tracking_number, value_price: prealert.value_price }
    assert_redirected_to prealert_path(assigns(:prealert))
  end

  def test_destroy
    assert_difference("Prealert.count", -1) do
      delete :destroy, id: prealert
    end

    assert_redirected_to prealerts_path
  end
end
