class InfoRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :carpool
  validates_presence_of :user 
  validates_presence_of :carpool 
end