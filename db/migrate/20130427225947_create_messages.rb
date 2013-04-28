class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.references :user, :chat
    	t.text :text
    	t.timestamps
    end
  end
end
