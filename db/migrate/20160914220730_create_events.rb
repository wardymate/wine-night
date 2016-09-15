class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|

      t.string :venue
      t.date :date
      t.integer :guest_number
      t.timestamps
    end
  end
end
