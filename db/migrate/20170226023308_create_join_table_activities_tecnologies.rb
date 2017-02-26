class CreateJoinTableActivitiesTecnologies < ActiveRecord::Migration[5.0]
  def change
    create_join_table :activities,:tecnologies  do |t|
      t.index [:tecnology_id, :activity_id]
      t.index [:activity_id, :tecnology_id]
    end
  end
end
