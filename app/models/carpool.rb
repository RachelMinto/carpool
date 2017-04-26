class Carpool < ActiveRecord::Base
  validates_presence_of :city, :state, :am_start, :am_end, :pm_start, :pm_end, :parking_address
  belongs_to :user
  enum status: [:pending, :approved, :denied]

  has_secure_password validations: false
end