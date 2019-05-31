class User < ActiveRecord::Base
  has_secure_password

  validates :email, :presence => true # validating that email is present

  has_many :movies
end
