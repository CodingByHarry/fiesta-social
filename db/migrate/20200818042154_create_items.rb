class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.timestamps
      
      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""
      t.integer :bin
      t.integer :co
    end
  end
end
