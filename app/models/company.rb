# coding: utf-8
class Company < ActiveRecord::Base
  has_many :monitor_video
end
