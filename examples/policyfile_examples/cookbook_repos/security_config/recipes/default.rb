#
# Cookbook:: security_config
# Recipe:: default
#
# Copyright:: 2021, Chef Customer-Facing Teams, All Rights Reserved.

# Log the status of this cookbook
#  Uses helper method from `shared_components`
log "#{cookbook_name} cookbook is #{cookbook_status_enabled? ? 'enabled' : 'not enabled'} via attribute settings"

return unless cookbook_status_enabled?
