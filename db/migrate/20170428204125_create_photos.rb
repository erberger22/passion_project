class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id, null: false
      t.integer :location_id, null: false
      t.string :photo_file, null: false
      t.string :description, null: false
      t.integer :longetude, null: false
      t.integer :latitude, null: false


      t.timestamps(null: false)
    end
  end
end
