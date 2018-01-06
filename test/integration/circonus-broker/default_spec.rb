describe service('jezebel') do
  it { should be_enabled }
end

describe service('noitd') do
  it { should be_enabled }
end

describe port(43191) do
  it { should be_listening }
end

describe service('ntpd') do
  it { should be_enabled }
  it { should be_running }
end

describe command('/opt/napp/bin/provtool --version') do
  its('exit_status') { should eq 0 }
end
