class ChangePlayPlayedOnFormat < ActiveRecord::Migration[5.1]
  def change
		change_column :plays, :played_on, :datetime
  end
end
