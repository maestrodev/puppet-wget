require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.mock_with :rspec

  c.before(:each) do
    Puppet::Util::Log.level = :warning
    Puppet::Util::Log.newdestination(:console)
  end

  c.default_facts = {
    :operatingsystem => 'CentOS',
    :operatingsystemrelease => '6.6',
    :kernel => 'Linux',
    :osfamily => 'RedHat',
    :architecture => 'x86_64',
    :clientcert => 'puppet.acme.com',
    :environment => 'rp_env',
    :schedule => nil,
  }.merge({})

  c.before do
    # avoid "Only root can execute commands as other users"
    Puppet.features.stubs(:root? => true)
  end
end

shared_examples :compile, :compile => true do
  it { should compile.with_all_deps }
end

