class AddIndexToAchievements < ActiveRecord::Migration[5.0]
  def change
    add_index :achievements, :name, unique: true
  end
end
