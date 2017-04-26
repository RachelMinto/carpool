class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :password, :institution
  validates_length_of :password, minimum: 8, on: :create
  validates_uniqueness_of :email
  has_one :carpool
  has_many :info_requests

  has_secure_password validations: false

  def contact_info
    "#{first_name} #{last_name}, #{email}"
  end
end