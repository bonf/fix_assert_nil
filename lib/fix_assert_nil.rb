require "fix_assert_nil/version"

module FixAssertNil
end

module Minitest
  module Assertions

    alias_method :original_assert_equal, :assert_equal

    def assert_equal exp, act, msg = nil
      if nil == exp then
        assert_nil act, msg
      else
        original_assert_equal exp, act, msg
      end
    end

  end
end