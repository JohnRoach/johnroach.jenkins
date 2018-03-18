require 'serverspec'

set :backend, :exec

describe file('/etc/yum.repos.d/jenkins.repo') do
  it { should exist }
  it { should be_file }
  #its(:content) { should match(/Hello world!/) }
end

describe yumrepo('jenkins') do
  it { should exist }
  it { should be_enabled }
end
