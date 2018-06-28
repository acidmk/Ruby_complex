require 'test/unit'
require 'test/unit/ui/console/testrunner'
require_relative 'complex_number'

class TC_MyTest < Test::Unit::TestCase
  def test_sum
    n = ComplexNumber.new(1, 1)
    m = ComplexNumber.new(2, 2)
    s = n + m
    assert(s.to_s == "3 3i", 'Sum failed')
  end

  def test_sub
    n = ComplexNumber.new(1, 1)
    m = ComplexNumber.new(2, 2)
    s = n - m
    assert(s.to_s == "-1 -1i", 'Sum failed')
  end

  def test_mul
    n = ComplexNumber.new(1, 1)
    m = ComplexNumber.new(2, 2)
    s = n * m
    assert(s.to_s == "0 4i", 'Sum failed')
  end
end

Test::Unit::UI::Console::TestRunner.run(TC_MyTest)
