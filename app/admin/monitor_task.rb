ActiveAdmin.register MonitorTask do
  menu :priority => 4
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :mt_type, :name, :lengthtype, :engine, :schedule_time, :schedule_frequency, :status, :last_start_time, :last_end_time, :schedule_time_date, :schedule_time_time_hour, :schedule_time_time_minute, :last_start_time_date, :last_start_time_time_hour, :last_start_time_time_minute, :last_end_time_date, :last_end_time_time_hour, :last_end_time_time_minute
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  index do
    column(:mt_type, :mt_type)
    column(:name, :name)
    column(:lengthtype, :lengthtype)
    column(:engine, :engine)
    column(:schedule_time, :schedule_time)
    column(:schedule_frequency, :schedule_frequency)
    column(:status, :status)
    column(:last_start_time, :last_start_time)
    column(:last_end_time, :last_end_time)
  end
  form do |f|
    f.inputs do
      f.input :mt_type
      f.input :name
      f.input :lengthtype
      f.input :engine
      f.input :schedule_time, :as => :just_datetime_picker
      f.input :schedule_frequency
      f.input :status
      f.input :last_start_time, :as => :just_datetime_picker
      f.input :last_end_time, :as => :just_datetime_picker   
    end
    f.actions
  end

end
