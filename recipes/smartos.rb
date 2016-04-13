execute 'add circonus pkgsrc repo' do
  command 'echo http://updates.circonus.net/smartos/14.1/ >> /opt/local/etc/pkgin/repositories.conf'
  not_if 'grep "http://updates.circonus.net/smartos/14.1/" /opt/local/etc/pkgin/repositories.conf'
end

execute 'install circonus broker' do
  command 'pkgin -fy update && pkgin -y install circonus-field-broker'
end

service 'jezebel' do
  action :enable
end

service 'noitd' do
  action :enable
end
