class User < ActiveRecord::Base
  has_many :messages
  has_many :chats, :through => :messages
  attr_accessible :email, :name, :password

  has_secure_password

  validates_presence_of :name, :email, :password_digest
  validates_uniqueness_of :email
end
