describe service('jezebel') do
  it { should be_enabled }
end

describe service('noitd') do
  it { should be_enabled }
end

describe service('ntpd') do
  it { should be_enabled }
  it { should be_running }
end

describe command('sudo /opt/napp/bin/provtool config get') do
  its('exit_status') { should eq 0 }
end

describe file('/lib64/libpcre.so.0') do
  it { should exist }
end
