# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'default_policy'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'base_config::default'

# Specify a custom source for a single cookbook:
cookbook 'shared_components', path: '../cookbook_repos/shared_components'
cookbook 'base_config', path: '../cookbook_repos/base_config'

# Optionally set attributes for this policy
default['base_config']['cookbook_enabled'] = true
