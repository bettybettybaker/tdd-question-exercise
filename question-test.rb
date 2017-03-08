require "minitest"
require "minitest/mock"
require "./questions-classes"

class TestReporter < Minitest::Unit::TestCase
  def test_export
    $stdout = StringIO.new
    Reporter.export "This is a string."
    assert_equal "This is a string.\n", $stdout.string
  end
end
