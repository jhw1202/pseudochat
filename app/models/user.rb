class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_secure_password
  validates_presence_of :name
  validates_uniqueness_of :email
end
