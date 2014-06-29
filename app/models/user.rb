class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :password, :presence => true
end
