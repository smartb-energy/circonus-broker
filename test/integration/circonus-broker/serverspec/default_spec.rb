require_relative './spec_helper'


describe service('jezebel') do
  it { should be_enabled }
end

describe service('noitd') do
  it { should be_enabled }
end

describe port(80) do
  it { should be_listening }
end

describe port(43191) do
  it { should be_listening }
end

if ['centos', 'omnios'].include?(os[:family])
  describe service('ntp') do
    it { should be_enabled }
    it { should be_running }
  end
end
