class Carpool < ActiveRecord::Base
  # validates_presence_of :first_name, :last_name, :email, :password, :institution
  # validates_length_of :password, minimum: 8, on: :create
  # validates_uniqueness_of :email
  belongs_to :user

  has_secure_password validations: false
end