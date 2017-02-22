class AddMemberToAdvertisements < ActiveRecord::Migration[5.0]
  def change
    add_reference :advertisements, :member, foreign_key: true
  end
end
