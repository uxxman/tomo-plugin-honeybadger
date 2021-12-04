require "test_helper"

class Tomo::Plugin::Honeybadger::TasksTest < Minitest::Test
  def setup
    @tester = Tomo::Testing::MockPluginTester.new("honeybadger")
  end

  def test_deploy
    @tester.run_task("honeybadger:deploy")
    assert_match("bundle exec honeybadger deploy", @tester.executed_script)
  end
end
