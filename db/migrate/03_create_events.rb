class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :summary
      t.text :description
      t.float :price
      t.text :status
      t.integer :age_restriction
      t.string :presented_by
      t.string :image
      t.references :user, null: false, foreign_key: true 
      t.references :venue, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
