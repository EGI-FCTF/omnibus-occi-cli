name "occi-cli"
maintainer "parak@cesnet.cz"
homepage "https://github.com/gwdg/rOCCI-cli"

replaces        "occi-cli"
install_path    "/opt/occi-cli"
build_version   "4.2.0.rc1"
build_iteration 4

# creates required build directories
dependency "preparation"

# version manifest file
dependency "version-manifest"

# occi-cli dependencies/components
dependency "occi-cli"

exclude "\.git*"
exclude "bundler\/git"
