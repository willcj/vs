# coding: utf-8
class MonitorVideo < ActiveRecord::Base
  belongs_to :company
  has_many :monitor_result
  has_and_belongs_to_many :monitor_tasks, :join_table => :monitor_tasks_monitor_videos
end
