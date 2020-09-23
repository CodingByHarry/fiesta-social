class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.timestamps

<<<<<<< HEAD
      t.references :user
      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""
      t.integer :bin
      t.integer :co
=======
      t.string :note, null: false, default: ""
      t.integer :bin
      t.references :user, null: false
      t.references :fiesta_item, null: false

      t.integer :end, null: false, default: 0
      t.integer :spr, null: false, default: 0
      t.integer :int, null: false, default: 0
      t.integer :str, null: false, default: 0
      t.integer :dex, null: false, default: 0

      t.integer :hobs, null: false, default: 0
>>>>>>> 62713dd0deba55f1a54528ca4622a57e94fe48bb
    end
  end
end
