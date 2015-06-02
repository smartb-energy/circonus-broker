execute 'install circonus-field-broker-0.1.1431380725' do
  command 'yes | pkg_add http://updates.circonus.net/smartos/14.1/circonus-field-broker-0.1.1431380725.tgz'
end

service 'jezebel' do
  action :enable
end

service 'noitd' do
  action :enable
end
