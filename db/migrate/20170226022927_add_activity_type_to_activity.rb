class AddActivityTypeToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :activity_type, :string
  end
end