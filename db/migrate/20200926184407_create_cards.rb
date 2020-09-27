class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :card_type
      t.bigint :card_number
      t.integer :cvv
      t.string :expire_date
      t.string :name_on_card

      t.timestamps
    end
  end
end
