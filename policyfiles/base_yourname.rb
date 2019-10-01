name 'base_yourname'

default_source :supermarket
run_list ["ntp::default"]

cookbook 'ntp', '~> 3.5.6'
