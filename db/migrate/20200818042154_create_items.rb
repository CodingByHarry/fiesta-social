class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""
      t.integer :bin
      t.integer :co
      t.timestamps
    end
  end
end
