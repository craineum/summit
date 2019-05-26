class CreateRaffleItems < ActiveRecord::Migration[6.0]
  def change
    create_table :raffle_items do |t|
      t.string :name
      t.integer :raffle_type
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
