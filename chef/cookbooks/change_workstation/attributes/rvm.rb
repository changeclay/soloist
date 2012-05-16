include_attribute("pivotal_workstation::rvm")

node.override["rvm"]["rubies"] = ["ruby-1.9.3-p0"]
node.override["rvm"]["default_ruby"] = "ruby-1.9.3-p0"
