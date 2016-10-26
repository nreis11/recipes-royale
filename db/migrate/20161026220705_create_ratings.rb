class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :recipe_id
      t.integer :rater_id
      t.integer :value

      t.timestamps
    end
  end
end
