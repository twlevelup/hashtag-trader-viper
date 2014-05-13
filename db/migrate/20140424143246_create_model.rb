class CreateModel < ActiveRecord::Migration
  def up
  	create_table :users do |t|
  		t.column :username, :string
  		t.column :chats, :string
  		t.column :type, :string
  		t.column :date, :datetime
  		t.timestamps
  	end
  end
end
