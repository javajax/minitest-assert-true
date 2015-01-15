require "minitest/assert_true/version"

module Minitest::Assertions
  def assert_true(actual, message = nil)
    message = message(message) { "Expected #{actual} to be true" }
    assert true == actual, message
  end

  def refute_true(actual, message = nil)
    message = message(message) { "Expected #{actual} to not be true" }
    refute true == actual, message
  end

  def assert_false(actual, message = nil)
    message = message(message) { "Expected #{actual} to be false" }
    assert false == actual, message
  end

  def refute_false(actual, message = nil)
    message = message(message) { "Expected #{actual} to not be false" }
    refute false == actual, message
  end
end
