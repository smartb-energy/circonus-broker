include_recipe 'yum'
include_recipe 'ntp'

# Circonus repo:
yum_repository 'circonus' do
  description "Circonus - Base"
  baseurl "http://updates.circonus.net/centos/6/x86_64/"
  gpgcheck false
  action :create
end

package 'circonus-field-broker' do
end
