class AddDiscordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :discord, :string
    add_column :users, :discord_status, :integer, default: 0
  end
end
