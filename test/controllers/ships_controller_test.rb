require "test_helper"

class ShipsControllerTest < ActionController::TestCase
  def ship
    @ship ||= ships :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ships)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Ship.count") do
      post :create, ship: { address: ship.address, city: ship.city, country: ship.country, phone: ship.phone, state: ship.state, zip: ship.zip }
    end

    assert_redirected_to ship_path(assigns(:ship))
  end

  def test_show
    get :show, id: ship
    assert_response :success
  end

  def test_edit
    get :edit, id: ship
    assert_response :success
  end

  def test_update
    put :update, id: ship, ship: { address: ship.address, city: ship.city, country: ship.country, phone: ship.phone, state: ship.state, zip: ship.zip }
    assert_redirected_to ship_path(assigns(:ship))
  end

  def test_destroy
    assert_difference("Ship.count", -1) do
      delete :destroy, id: ship
    end

    assert_redirected_to ships_path
  end
end
