class MonitorTasksMonitorVideos < ActiveRecord::Migration
  def change
  	create_table :monitor_tasks_monitor_videos, :id => false do |t|
      t.references :monitor_task
      t.references :monitor_video
    end

    add_index :monitor_tasks_monitor_videos, [:monitor_task_id, :monitor_video_id], :name => "index_monitor_tasks_monitor_videos_on_task_id_and_video_id"
    add_index :monitor_tasks_monitor_videos, :monitor_task_id
    add_index :monitor_tasks_monitor_videos, :monitor_video_id
  end
end
