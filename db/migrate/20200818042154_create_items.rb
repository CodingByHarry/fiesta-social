class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.timestamps

      t.string :note, null: false, default: ""
      t.integer :bin
      t.references :user, null: false
      t.references :fiesta_item, null: false

      t.integer :end, null: false, default: 0
      t.integer :spr, null: false, default: 0
      t.integer :int, null: false, default: 0
      t.integer :str, null: false, default: 0
      t.integer :dex, null: false, default: 0
    end
  end
end
