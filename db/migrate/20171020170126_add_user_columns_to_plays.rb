class AddUserColumnsToPlays < ActiveRecord::Migration[5.1]
  def change
		add_column :plays, :user_1_id, :integer
		add_column :plays, :user_2_id, :integer
		add_column :plays, :user_3_id, :integer
		add_column :plays, :user_4_id, :integer
  end
end
