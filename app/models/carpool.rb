class Carpool < ActiveRecord::Base
  validates_presence_of :city, :state, :am_start, :am_end, :pm_start, :pm_end, :parking_address
  belongs_to :user
  validates_presence_of :user 
  has_many :info_requests
  enum status: [:pending, :approved, :denied]
  default_scope { order(city: :asc) }

  has_secure_password validations: false
end