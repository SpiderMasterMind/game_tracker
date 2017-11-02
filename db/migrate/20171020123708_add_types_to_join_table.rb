class AddTypesToJoinTable < ActiveRecord::Migration[5.1]
  def change
		change_column(:plays_users, :user_2_id, :integer)

		change_column(:plays_users, :user_3_id, :integer)

		change_column(:plays_users, :user_4_id, :integer)
		
  end
end
