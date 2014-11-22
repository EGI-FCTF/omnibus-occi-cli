name "occi-cli"
maintainer "parak@cesnet.cz"
homepage "https://github.com/EGI-FCTF/rOCCI-cli"

# Defaults to C:/occi-server on Windows
# and /opt/occi-server on all other platforms
install_dir     "#{default_root}/#{name}"
build_version   "4.3.1"
build_iteration 3

override :rubygems, :version => '2.4.4'
override :ruby, :version => '2.1.5'

# creates required build directories
dependency 'preparation'

# occi-cli dependencies/components
dependency 'occi-cli'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
