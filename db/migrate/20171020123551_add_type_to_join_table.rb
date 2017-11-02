class AddTypeToJoinTable < ActiveRecord::Migration[5.1]
  def change
		change_column(:plays_users, :user_id, :integer)
  end
end
