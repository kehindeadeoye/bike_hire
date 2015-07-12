require "test_helper"

class BikeHireTest < ActiveSupport::TestCase
  def bike_hire
    @bike_hire ||= BikeHire.new
  end

  def test_valid
    assert bike_hire.valid?
  end
end
