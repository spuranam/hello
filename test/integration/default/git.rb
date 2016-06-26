# Testing hook
# See for details, https://github.com/chef/inspec/issues/541

node = json('/tmp/kitchen_chef_node.json').params

node['default']['hello']['packages'].each do |pack|
  describe package(pack) do
    it { should be_installed }
  end
end

# describe package('git') do
#   it { should be_installed }
# end