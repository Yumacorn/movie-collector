class User < ActiveRecord::Base
  attr_accessor :first_name, :last_name, :zip_code
  has_secure_password

  validates :email, :presence => true # validating that email is present

  has_many :movies
end
