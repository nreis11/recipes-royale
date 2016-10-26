class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.integer :creator_id
      t.integer :course_id
      t.integer :difficulty
      t.integer :prep_time
      t.string :name
      t.text :directions

      t.timestamps
    end
  end
end
