u1 = User.create(:name => "Chris Malin", :email => "csmalin@gmail.com", :password => "password")
u2 = User.create(:name => "Philip Woo", :email => "pwoo@gmail.com", :password => "password")

chat = Chat.create(title:"Test Chat")

chat.messages.build(text:"user1 text", user_id:u1.id).save
chat.messages.build(text:"user2 text", user_id:u2.id).save

