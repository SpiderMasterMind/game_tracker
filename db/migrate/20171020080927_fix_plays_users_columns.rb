class FixPlaysUsersColumns < ActiveRecord::Migration[5.1]
  def change
		change_column :plays_users, :user_id_1, :user_1_id
		change_column :plays_users, :user_id_2, :user_2_id
		change_column :plays_users, :user_id_3, :user_3_id
		change_column :plays_users, :user_id_4, :user_4_id
  end
end
