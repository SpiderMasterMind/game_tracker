class FixPlaysUsers < ActiveRecord::Migration[5.1]
  def change
		remove_column :plays_users, :user_2_id
		remove_column :plays_users, :user_3_id
		remove_column :plays_users, :user_4_id
		rename_column :plays_users, :user_1_id, :user_id
		add_column :plays_users, :position, :integer
		
  end
end
