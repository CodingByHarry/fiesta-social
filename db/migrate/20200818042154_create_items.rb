class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.timestamps

      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""
      t.integer :bin
      t.references :user, null: false
      t.references :fiesta_item, null: false
    end
  end
end
