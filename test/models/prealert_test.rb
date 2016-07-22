require "test_helper"

class PrealertTest < ActiveSupport::TestCase
  def prealert
    @prealert ||= Prealert.new
  end

  def test_valid
    assert prealert.valid?
  end
end
