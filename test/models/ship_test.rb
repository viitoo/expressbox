require "test_helper"

class ShipTest < ActiveSupport::TestCase
  def ship
    @ship ||= Ship.new
  end

  def test_valid
    assert ship.valid?
  end
end
