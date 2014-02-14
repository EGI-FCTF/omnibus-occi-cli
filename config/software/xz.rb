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

name "xz"
version "5.0.5"

dependency "libgcc"

source :url => "http://tukaani.org/xz/xz-5.0.5.tar.gz",
       :md5 => "19d924e066b6fff0bc9d1981b4e53196"

relative_path "xz-5.0.5"
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
  command "autoreconf -fi"
  command "./configure --prefix=#{install_dir}/embedded", :env => configure_env
  command "make -j #{max_build_jobs}"
  command "make -j #{max_build_jobs} install"
end
