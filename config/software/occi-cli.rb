name "occi-cli"
default_version "4.2.4"

dependency "ruby"
dependency "rubygems"

build do
  gem "install occi-cli -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  command "rm -rf #{install_dir}/embedded/docs"
  command "rm -rf #{install_dir}/embedded/share/man"
  command "rm -rf #{install_dir}/embedded/share/doc"
  command "rm -rf #{install_dir}/embedded/ssl/man"
  command "rm -rf #{install_dir}/embedded/info"
end
