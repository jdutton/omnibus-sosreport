#
# Copyright:: Copyright (c) 2013 Stratus Technologies
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

name "sosreport"
version "c398e45ce3e22062df08c2d4f9dc1eed1ee99e1d" # master branch 10/30/2013

dependency "python"

source :git => "https://github.com/sosreport/sosreport.git"

relative_path "sosreport"

build do
  command "#{install_dir}/embedded/bin/python setup.py install --prefix=#{install_dir}/embedded"
  command "ln -sf #{install_dir}/embedded/bin/sosreport #{install_dir}/bin/"
end
