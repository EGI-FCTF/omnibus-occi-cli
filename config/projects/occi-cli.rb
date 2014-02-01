name "occi-cli"
maintainer "parak@cesnet.cz"
homepage "https://github.com/gwdg/rOCCI-cli"

replaces        "occi-cli"
install_path    "/opt/occi-cli"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

# version manifest file
dependency "version-manifest"

# occi-cli dependencies/components
dependency "occi-cli"
dependency "nokogiri"
dependency "libxml2"
dependency "libxslt"
dependency "zlib"
dependency "xz-utils"

exclude "\.git*"
exclude "bundler\/git"
