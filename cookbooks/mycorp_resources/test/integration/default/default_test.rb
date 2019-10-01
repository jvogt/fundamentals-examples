describe user('YourUsernameHere') do
  it { should exist }
  its('home') { should eq '/home/YourUsernameHere' }
  its('shell') { should eq '/bin/sh' }
end

describe user('OldUser') do
  it { should_not exist }
end
