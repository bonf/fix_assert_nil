require "test_helper"

class FixAssertNilTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FixAssertNil::VERSION
  end

  def test_it_does_something_useful
    nothing = nil
    nobody = nil

    assert_equal nothing , nobody
  end
end
