class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :code_name

      t.timestamps
    end
  end
end
