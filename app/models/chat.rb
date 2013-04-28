class Chat < ActiveRecord::Base
  has_many :messages
  has_many :users, :through => :messages
  attr_accessible :title
end
