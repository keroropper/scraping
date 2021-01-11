class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.date :date
      t.integer :price,       null: false
      t.integer :start,       null: false
      t.integer :low,         null: false
      t.integer :high,        null: false
      t.integer :end,         null: false
      t.integer :trade,       null: false
      t.integer :controll,    null: false
      t.references :name,  foreign_key: true
      
      t.timestamps
    end
  end
end
