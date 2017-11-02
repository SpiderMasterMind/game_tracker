class RemoveFKsFromPlays < ActiveRecord::Migration[5.1]
  def change
		remove_column :plays, :user_1_id  
		remove_column :plays, :user_2_id  
		remove_column :plays, :user_3_id  
		remove_column :plays, :user_4_id
  end
end
