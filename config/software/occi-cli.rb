name "occi-cli"
default_version "4.3.0.beta.2"

dependency "ruby"
dependency "rubygems"

build do
  gem "install occi-cli -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  delete "#{install_dir}/embedded/docs"
  delete "#{install_dir}/embedded/share/man"
  delete "#{install_dir}/embedded/share/doc"
  delete "#{install_dir}/embedded/ssl/man"
  delete "#{install_dir}/embedded/info"
end
