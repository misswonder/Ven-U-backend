class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.text :description
      t.float :price
      t.string :artist
      t.references :venue, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
