class CreateChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :changes do |t|
      t.time :time_of_change
      t.boolean :set_online
      t.references :lock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
