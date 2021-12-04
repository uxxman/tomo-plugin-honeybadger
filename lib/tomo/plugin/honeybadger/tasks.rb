module Tomo::Plugin::Honeybadger
  class Tasks < Tomo::TaskLibrary
    # Update Honeybadger about the new deployment
    def deploy
      remote.chdir(paths.current) do
        deployer = `whoami`.strip
        revision = `git rev-parse HEAD`.strip

        remote.run("bundle", "exec", "honeybadger", "deploy", "-r", settings[:git_url], "-s", revision, "-u", deployer)
      end
    end
  end
end
