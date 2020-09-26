class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :name,                null: false
      t.string :explanation,         null: false
      t.integer :category_id,        null: false
      t.integer :price,              null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
