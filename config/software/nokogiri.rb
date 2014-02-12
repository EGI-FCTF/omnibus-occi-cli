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

name "nokogiri"
version "1.6.1"

dependencies ["ruby", "rubygems", "libxml2", "libxslt", "libiconv", "zlib", "xz-utils"]

build do
  gem ["install",
       "nokogiri",
       "-v #{version}",
       "--",
       "--disable-static",
       "--use-system-libraries",
       "--with-zlib-dir=#{install_dir}/embedded/lib",
       "--with-lzma-dir=#{install_dir}/embedded/lib",
       "--with-xml2-dir=#{install_dir}/embedded/lib",
       "--with-xslt-dir=#{install_dir}/embedded/lib",
       "--with-exslt-dir=#{install_dir}/embedded/lib",
       "--with-iconv-dir=#{install_dir}/embedded/lib"].join(" ")
  command "rm -rf /opt/occi-cli/embedded/lib/ruby/gems/1.9.1/gems/nokogiri-1.6.1/ext/nokogiri/tmp"
  command "rm -rf /opt/occi-cli/embedded/lib/ruby/gems/1.9.1/gems/nokogiri-1.6.1/ports"
end
