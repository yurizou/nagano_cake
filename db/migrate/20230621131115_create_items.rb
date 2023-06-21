class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :introduction, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
