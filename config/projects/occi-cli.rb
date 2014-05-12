name "occi-cli"
maintainer "parak@cesnet.cz"
homepage "https://github.com/EGI-FCTF/rOCCI-cli"

replaces        "occi-cli"
install_path    "/opt/occi-cli"
build_version   "4.2.4"
build_iteration 1

# creates required build directories
dependency "preparation"

# version manifest file
dependency "version-manifest"

# occi-cli dependencies/components
dependency "occi-cli"

exclude "\.git*"
exclude "bundler\/git"
