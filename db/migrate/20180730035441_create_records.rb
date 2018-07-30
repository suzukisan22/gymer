class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :training_menu_id
      t.integer :times
      t.decimal :weight, precision: 6, scale: 2
      t.decimal :distance, precision: 6, scale: 3
      t.integer :place_id

      t.timestamps
    end
    add_index :records, :user_id
    add_index :records, :training_menu_id
    add_index :records, :place_id
  end
end
