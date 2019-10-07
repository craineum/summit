class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
      t.string :uuid
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :social_handle
      t.string :other
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
    add_index :attendees, :uuid, unique: true
  end
end
