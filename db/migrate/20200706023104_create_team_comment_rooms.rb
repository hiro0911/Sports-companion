class CreateTeamCommentRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :team_comment_rooms do |t|
    	t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
