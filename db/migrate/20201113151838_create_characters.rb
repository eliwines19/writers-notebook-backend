class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :biology
      t.boolean :hero
      t.boolean :villain
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :story_idea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
