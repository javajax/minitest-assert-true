require 'minitest/autorun'
require 'minitest/assert_true'

describe 'assert_true' do
  it 'returns true for true value' do
    assert_true true
  end

  it 'returns false for truthy values' do
    assert_raises MiniTest::Assertion do
      assert_true 'true'
    end
  end

  it 'returns false for falsy values' do
    assert_raises MiniTest::Assertion do
      assert_true false
    end
  end

  it 'prints default message if none is given' do
    error = assert_raises MiniTest::Assertion do
      assert_true false
    end

    assert_equal 'Expected false to be true.', error.message
  end

  it 'prints custom message if one is given' do
    error_message = 'custom message'
    expected_error_message = "#{error_message}.\nExpected false to be true."

    error = assert_raises MiniTest::Assertion, expected_error_message do
      assert_true false, error_message
    end

    assert_equal expected_error_message, error.message
  end

  describe 'refute' do
    it 'returns true when false is give' do
      refute_true false
    end

    it 'returns true whwn falsly value is given' do
      refute_true nil
    end

    it 'raises when false is given' do
      assert_raises MiniTest::Assertion do
        refute_true true
      end
    end

    it 'prints default message if none is given' do
      error = assert_raises MiniTest::Assertion do
        refute_true true
      end

      assert_equal 'Expected true to not be true.', error.message
    end

    it 'prints custom message if one is given' do
      error_message = 'custom message'
      expected_error_message = "#{error_message}.\nExpected true to not be true."

      error = assert_raises MiniTest::Assertion, expected_error_message do
        refute_true true, error_message
      end

      assert_equal expected_error_message, error.message
    end
  end
end

describe 'assert_false' do
  it 'returns true for assert_false' do
    assert_false false
  end

  it 'returns false for falsy values' do
    assert_raises MiniTest::Assertion do
      assert_false nil
    end
  end

  it 'returns false for true values' do
    assert_raises MiniTest::Assertion do
      assert_false true
    end
  end

  it 'prints default message if none is given' do
    error = assert_raises MiniTest::Assertion do
      assert_false true
    end

    assert_equal 'Expected true to be false.', error.message
  end

  it 'prints custom message if one is given' do
    error_message = 'custom message'
    expected_error_message = "#{error_message}.\nExpected true to be false."

    error = assert_raises MiniTest::Assertion do
      assert_false true, error_message
    end

    assert_equal expected_error_message, error.message
  end

  describe 'refute' do
    it 'returns true when true is given' do
      refute_false true
    end

    it 'returns true when nil is given' do
      refute_false nil
    end

    it 'raises when false is given' do
      assert_raises MiniTest::Assertion do
        refute_false false
      end
    end

    it 'prints default message if none is given' do
      error = assert_raises MiniTest::Assertion do
        refute_false false
      end

      assert_equal 'Expected false to not be false.', error.message
    end

    it 'prints custom message if one is given' do
      error_message = 'custom message'
      expected_error_message = "#{error_message}.\nExpected false to not be false."

      error = assert_raises MiniTest::Assertion do
        refute_false false, error_message
      end

      assert_equal expected_error_message, error.message
    end
  end
end
