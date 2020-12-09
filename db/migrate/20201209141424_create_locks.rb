class CreateLocks < ActiveRecord::Migration[6.0]
  def change
    create_table :locks do |t|
      t.string :lock_id
      t.string :kind
      t.boolean :online

      t.timestamps
    end
  end
end
