#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "xz-utils"
version "5.1.1alpha+20120614"

dependency "libgcc"

# TODO: this link is subject to change with each new release of zlib.
#       we'll need to use a more robust link (sourceforge) that will
#       not change over time.
source :url => "http://ftp.de.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614.orig.tar.gz",
       :md5 => "4827c3ea0638c6a3e8bafb77793fdc98"

relative_path "xz-utils-5.1.1alpha+20120614"
configure_env =
  case platform
  when "aix"
    {
      "CC" => "xlc -q64",
      "CXX" => "xlC -q64",
      "LD" => "ld -b64",
      "OBJECT_MODE" => "64",
      "ARFLAGS" => "-X64 cru",
    }
  else
    {}
  end

build do
  command "./autogen.sh"
  command "./configure --prefix=#{install_dir}/embedded", :env => configure_env
  command "make -j #{max_build_jobs}"
  command "make -j #{max_build_jobs} install"
end
