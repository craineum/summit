class CreateRaffleEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :raffle_entries do |t|
      t.string :name
      t.string :email
      t.references :raffle_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
