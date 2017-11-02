class FixPlaysUsersColumnNames < ActiveRecord::Migration[5.1]
  def change
		rename_column :plays_users, :user_id_1, :user_1_id
		rename_column :plays_users, :user_id_2, :user_2_id
		rename_column :plays_users, :user_id_3, :user_3_id
		rename_column :plays_users, :user_id_4, :user_4_id
  end
end
