class CreateFiestaSockets < ActiveRecord::Migration[6.0]
  def change
    create_table :fiesta_sockets do |t|
      t.references :fiesta_item, null: false
      t.timestamps
    end
  end
end
