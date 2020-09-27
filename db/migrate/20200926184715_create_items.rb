class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :image
      t.string :brand
      t.string :jewelry_type

      t.timestamps
    end
  end
end
