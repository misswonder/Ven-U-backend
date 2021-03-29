class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :name 
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
