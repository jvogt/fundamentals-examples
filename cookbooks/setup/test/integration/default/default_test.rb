describe file('/etc/motd') do
  it { should exist }
  its('content') { should match %r{\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}} }
end