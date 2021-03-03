# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'webapp_policy'

# Where to find external cookbooks:
default_source :supermarket

# Include the default security policy
include_policy 'default_policy_with_security', path: '.'

# run_list: chef-client will run these recipes in the order specified.
#  Run-list items inherited from include_policy block will be pre-pended so do not have to be specifically defined here.
run_list 'web_application::default'

# Cookbooks that are added from include_policy to not have to be re-defined here.
cookbook 'web_application', path: '../cookbook_repos/web_application'

# Optionally set attributes for this policy
default['base_config']['cookbook_enabled'] = true
default['security_config']['cookbook_enabled'] = true
default['web_application']['cookbook_enabled'] = true
