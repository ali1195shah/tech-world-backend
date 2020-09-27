class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
