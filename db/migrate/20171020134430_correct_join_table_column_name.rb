class CorrectJoinTableColumnName < ActiveRecord::Migration[5.1]
  def change
		rename_column :plays_users, :user_id, :user_1_id
  end
end
