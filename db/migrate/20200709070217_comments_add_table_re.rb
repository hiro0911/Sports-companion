class CommentsAddTableRe < ActiveRecord::Migration[5.2]
  def change
  	  create_table :comments do |t|
    	t.references :user, foreign_key: true
    	t.references :comment_room, foreign_key: true
    	t.text :sentence

      t.timestamps
    end
  end
end
