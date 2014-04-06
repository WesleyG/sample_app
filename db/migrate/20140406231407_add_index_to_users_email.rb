class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :users, :email, unique: true
  	# adding above line updates schema rb with a unique: true line for email
  end
end
