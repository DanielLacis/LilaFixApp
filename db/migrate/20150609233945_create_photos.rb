class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :photo
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end

    add_index :photos, :imageable_id
    add_index :photos, :imageable_type
  end
end
