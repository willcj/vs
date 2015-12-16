ActiveAdmin.register MonitorVideo do
  menu :priority => 3
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :description, :keyword, :company_id, :monitor_task_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  index do
    column(:name, :name)
    column(:description, :description)
    column(:keyword, :keyword)
    column(:company, :company)
  end

end
