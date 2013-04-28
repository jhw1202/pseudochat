class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat
  attr_accessible :text, :user_id
end
