class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :suit, null: false
      t.integer :min, null: false
      t.integer :depth, null: false
      t.text :place, null: false
      t.integer :transparency, null: false
      t.integer :temperature, null: false
      t.integer :date, null: false
      t.references :user, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
