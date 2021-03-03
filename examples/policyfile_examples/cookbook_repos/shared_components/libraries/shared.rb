#
# Chef Infra Documentation
# https://docs.chef.io/libraries/
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#
module SharedComponents
  module Helpers
    # Check to see if the cookbook is enabled via attribute
    def cookbook_status_enabled?
      if node[cookbook_name]['cookbook_enabled'] && node[cookbook_name]['cookbook_enabled'] == true
        true
      end
    end
  end
end

# Include helpers by default for recipe and resource
Chef::DSL::Recipe.include SharedComponents::Helpers
Chef::Resource.include SharedComponents::Helpers
