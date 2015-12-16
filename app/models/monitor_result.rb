# coding: utf-8
class MonitorResult < ActiveRecord::Base
  belongs_to :monitor_task
  belongs_to :monitor_video

  KEYMATCH = {
  				"0" => "不匹配",
  				"1" => "匹配"
  } 

  IS_ELIMINATE = {
  					"0" => "未肃清",
  					"1" => "肃清"
  }

  IS_TORT = {
  				"0" => "未侵权", 
  				"1" => "侵权",
  				"2" => "待定"
  } #所有不匹配的默认为未侵权， 匹配的默认为待定	 
end
