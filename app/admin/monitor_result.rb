ActiveAdmin.register MonitorResult do
  menu :priority => 5
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :href, :duration, :durationType, :Page, :time, :engine, :source, :KeyMatch, :VideoKey, :is_tort, :upload_time, :GOL_time, :is_eliminate
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end