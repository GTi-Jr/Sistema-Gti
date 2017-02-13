class AddFieldsToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :name, :string
    add_column :members, :course, :string
    add_column :members, :role, :string
    add_column :members, :join_date, :date
    add_column :members, :leave, :date
  end
end
