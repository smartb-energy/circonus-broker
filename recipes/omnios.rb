execute 'add circonus package repo' do
  command 'pkg set-publisher -g http://updates.circonus.net/omnios/ circonus'
  not_if 'pkg publisher | grep circonus'
end

execute 'create ntp.conf' do
  command 'echo server pool.ntp.org > /etc/inet/ntp.conf'
  not_if 'grep \'server pool.ntp.org\' /etc/inet/ntp.conf'
end

package 'field/broker' do
  action :install
end

%w{jezebel noitd ntp}.each do |svc|
  service svc do
    action :enable
  end
end
