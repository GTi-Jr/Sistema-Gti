class CreateJoinTableMembersActivities < ActiveRecord::Migration[5.0]
  def change
    create_join_table :members, :activities do |t|
      t.index [:member_id, :activity_id]
      t.index [:activity_id, :member_id]
    end
  end
end
