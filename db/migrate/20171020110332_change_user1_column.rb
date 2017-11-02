class ChangeUser1Column < ActiveRecord::Migration[5.1]
  def change
		rename_column :plays_users, :user_1_id, :user_id
  end
end
