# default_policy_with_security.rb
#

# A name that describes what the system you're building with Chef does.
name 'default_policy_with_security'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'base_config::default', 'security_config::default'

# Specify a custom source for a single cookbook:
cookbook 'shared_components', path: '../cookbook_repos/shared_components'
cookbook 'base_config', path: '../cookbook_repos/base_config'
cookbook 'security_config', path: '../cookbook_repos/security_config'

# Optionally set attributes for this policy
default['base_config']['cookbook_enabled'] = true
default['security_config']['cookbook_enabled'] = true
