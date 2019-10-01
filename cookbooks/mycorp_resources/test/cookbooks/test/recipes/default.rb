mycorp_user 'YourUsernameHere' do
  home '/home/YourUsernameHere'
end

mycorp_user 'OldUser' do
  action :create
end

mycorp_user 'OldUser' do
  action :remove
end
