class InfoRequest < ActiveRecord::Base
  has_many :users
  has_many :carpools
end