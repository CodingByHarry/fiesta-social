class CreateItemLists < ActiveRecord::Migration[6.0]
  def change
    create_table :fiesta_items do |t|
      t.timestamps

      t.string :name, null: false
      t.text :icon, null: false
      t.string :description, null: false, default: "This item doesn't have a description."
      t.integer :end, null: false, default: 0
      t.integer :spr, null: false, default: 0
      t.integer :int, null: false, default: 0
      t.integer :str, null: false, default: 0
      t.integer :dex, null: false, default: 0

    end
  end
end
