hostname = node['static_hostname']

file '/etc/motd' do
  content "Hostname is this: #{hostname}"
end
