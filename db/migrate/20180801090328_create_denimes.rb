class CreateDenimes < ActiveRecord::Migration[5.0]
  def change
    create_table :denimes do |t|
      t.string :brand
      t.string :model
      t.string :boulder
      t.string :washing
      t.string :valuation
      t.string :comment
      t.string :price
      t.string :day
      t.string :size
      t.string :weight

      t.timestamps
    end
  end
end
