class CreateGardens < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.integer :size
      t.string :description
      t.string :location
      t.integer :spot_number
      t.integer :price
      t.string :garden_review
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
