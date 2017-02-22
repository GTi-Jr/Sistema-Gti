class CreateJoinTableMembersAchievements < ActiveRecord::Migration[5.0]
  def change
    create_join_table :members, :achievements do |t|
      # t.index [:member_id, :achievement_id]
      # t.index [:achievement_id, :member_id]
    end
  end
end
