require "test_helper"

class Tomo::Plugin::HoneybadgerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil Tomo::Plugin::Honeybadger::VERSION
  end
end
