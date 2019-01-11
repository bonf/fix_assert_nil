require "fix_assert_nil/version"

module FixAssertNil
end

module Minitest
  module Assertions
    def assert_equal exp, act, msg = nil
      if nil == exp then
        assert_nil act, msg
      else
        assert exp == act, msg
      end
    end
  end
end