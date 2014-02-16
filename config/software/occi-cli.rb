name "occi-cli"
version "4.2.0"

dependency "ruby"
dependency "rubygems"

build do
  gem "install occi-cli -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  command "rm -rf /opt/occi-cli/embedded/docs"
  command "rm -rf /opt/occi-cli/embedded/share/man"
  command "rm -rf /opt/occi-cli/embedded/share/doc"
  command "rm -rf /opt/occi-cli/embedded/ssl/man"
  command "rm -rf /opt/occi-cli/embedded/info"
end

