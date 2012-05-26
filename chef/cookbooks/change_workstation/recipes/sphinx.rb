include_recipe "pivotal_workstation::homebrew"

unless brew_installed? "sphinx"
  brew_install "sphinx"

  directory "/Users/#{WS_USER}/Library/LaunchAgents" do
    owner WS_USER
    action :create
  end
end
