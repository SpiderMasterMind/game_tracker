class AddPlayColumnToJoinTable < ActiveRecord::Migration[5.1]
  def change
		add_column :plays_users, :play_id, :integer
  end
end
