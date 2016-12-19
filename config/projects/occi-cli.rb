name "occi-cli"
maintainer "Boris Parak <parak@cesnet.cz>"
homepage "https://github.com/EGI-FCTF/rOCCI-cli"
description "An OCCI client library & tools for working with OCCI-enabled clouds."

# Defaults to C:/occi-server on Windows
# and /opt/occi-server on all other platforms
install_dir     "#{default_root}/#{name}"
build_version   "4.3.6"
build_iteration 1

override :rubygems, :version => '2.4.4'
override :ruby, :version => '2.1.5'

# creates required build directories
dependency 'preparation'

# occi-cli dependencies/components
dependency 'occi-cli'

# version manifest file
dependency 'version-manifest'

# tweaking package-specific options
package :deb do
  vendor 'CESNET, Grid Department <cloud@metacentrum.cz>'
  license 'Apache 2.0'
  priority 'extra'
  section 'net'
end

package :rpm do
  vendor 'CESNET, Grid Department <cloud@metacentrum.cz>'
  license 'Apache 2.0'
  category 'Applications/Internet'
end

exclude '\.git*'
exclude 'bundler\/git'
