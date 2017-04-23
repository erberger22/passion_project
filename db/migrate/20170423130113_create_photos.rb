class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :photo, null: false
      t.string :description
      t.decimal :longetude
      t.decimal :latitude

      t.timestamps(null: false)
    end
  end
end
