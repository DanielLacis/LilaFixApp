class CreateCateogories < ActiveRecord::Migration
  def change
    create_table :cateogories do |t|
      t.string :title
      t.integer :child_id
      t.text :description

      t.timestamps
    end

    add_index :categories, :child_id
  end
end
