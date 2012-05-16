include_attribute("pivotal_workstation::rvm")

node[:rvm][:rubies].delete('ruby-1.9.3-p125') # don't waste time installing Pivotal's version

node.normal[:rvm] = {
  :rubies => {'ruby-1.9.3-p194' => { :command_line_options => '--with-gcc=clang' }},
  :default_ruby => 'ruby-1.9.3-p194'
}