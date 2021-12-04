require "tomo"
require_relative "honeybadger/tasks"
require_relative "honeybadger/version"

module Tomo
  module Plugin
    module Honeybadger
      extend Tomo::PluginDSL

      # TODO: initialize this plugin's settings with default values
      # defaults honeybadger_setting: "foo",
      #          honeybadger_another_setting: "bar"

      tasks Tomo::Plugin::Honeybadger::Tasks
    end
  end
end
