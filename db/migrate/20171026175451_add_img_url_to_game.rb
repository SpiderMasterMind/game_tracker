class AddImgUrlToGame < ActiveRecord::Migration[5.1]
  def change
		add_column :games, :img_url, :string
  end
end
