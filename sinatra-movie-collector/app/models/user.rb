class User < ActiveRecord::Base
  attr_accessor :first_name, :last_name, :zip_code
  has_secure_password

  validates :email, :presence => true # validating that email is present
  validates :first_name, presence: { message: "must be given please" }
  validates :last_name, presence: { message: "must be given please" }

  has_many :movies
end
