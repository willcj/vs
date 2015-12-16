# coding: utf-8
class MonitorTask < ActiveRecord::Base
  just_define_datetime_picker :schedule_time
  just_define_datetime_picker :last_start_time
  just_define_datetime_picker :last_end_time

  has_and_belongs_to_many :monitor_videos, :join_table => :monitor_tasks_monitor_videos
  has_many :monitor_result

  ENGINE = {
  			"0" => "youku",
  			"1" => "土豆",
  			"2" => "iqiyi",
  			"3" => "letv",
  			"4" => "sohu",
  			"5" => "qq",
  			"6" => "sina",
  			"7" => "huashu",
  			"8" => "kankan"
  	}

  TYPE = {
  			"0" => "定时",
  			"1" => "实时"
  } 	
  
  STATUS = {
  			"0" => "待运行",
  			"1" => "运行中",
  			"2" => "完成",
  			"4"	=> "中止／失败"
  }
  
end
