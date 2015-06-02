require_relative './spec_helper'


describe service('jezebel') do
  it { should be_enabled }
end

describe service('noitd') do
  it { should be_enabled }
end
