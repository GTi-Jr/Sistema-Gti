class CreateAdvertisements < ActiveRecord::Migration[5.0]
  def change
    create_table :advertisements do |t|
      t.date :date
      t.string :reason

      t.timestamps
    end
  end
end
