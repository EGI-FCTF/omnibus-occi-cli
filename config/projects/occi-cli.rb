name "occi-cli"
maintainer "parak@cesnet.cz"
homepage "https://github.com/EGI-FCTF/rOCCI-cli"

install_dir     '/opt/occi-cli'
build_version   "4.3.0.beta.2"
build_iteration 1

override :rubygems, :version => '2.4.1'
override :ruby, :version => '2.1.3'

# creates required build directories
dependency 'preparation'

# occi-cli dependencies/components
dependency 'occi-cli'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
