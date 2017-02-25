class AddIndexToAdvertisements < ActiveRecord::Migration[5.0]
  def change
    add_index :advertisements, [:date, :reason], :unique => true
  end
end
