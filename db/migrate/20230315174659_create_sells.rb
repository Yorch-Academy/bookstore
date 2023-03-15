class CreateSells < ActiveRecord::Migration[7.0]
  def change
    create_table :sells do |t|
      t.integer :quantity
      t.decimal :total
      t.string :day
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
