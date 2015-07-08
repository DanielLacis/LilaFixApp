class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :user_id
      t.text :description
      
      t.timestamps
    end
  end
end
