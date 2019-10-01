# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
resource_name :mycorp_user

property :username, String, name_property: true
property :home, String, default: lazy { "/home/#{username}" }
property :shell, String, default: '/bin/sh', equal_to: ['/bin/bash', '/bin/sh']

action :create do

  # Create a user to MyCorp standards
  user new_resource.username do
    home new_resource.home
    shell new_resource.shell
    manage_home false
  end

  directory new_resource.home do
    owner new_resource.username
    mode '0750'
    recursive true
  end
end

action :remove do
  user new_resource.username do
    action :remove
  end

  directory new_resource.home do
    action :delete
  end
end
