class CreateStoryIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :story_ideas do |t|
      t.string :name
      t.string :setting
      t.string :plot
      t.string :conflict
      t.string :theme
      t.string :pov
      t.string :tone
      t.string :style
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
