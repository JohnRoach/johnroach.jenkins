require 'serverspec'

set :backend, :exec

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
  it { should be_running.under('systemd') }
end
