class MonitorVideo < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :monitor_videos, :join_table => :monitor_tasks_monitor_videos
end
