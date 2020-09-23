class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.timestamps

      t.string :name, null: false, default: ""
      t.string :class, null: false, default: ""
      t.string :guild
      t.integer :level, null: false, default: 0
      t.integer :status, null: false, default: 0
    end
  end
end
