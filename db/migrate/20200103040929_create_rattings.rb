class CreateRattings < ActiveRecord::Migration[5.2]
  def change
    create_table :rattings do |t|
      t.references :accounts, null: false, foreign_key: true
      t.references :tours, null: false, foreign_key: true
      t.integer :account_id
      t.integer :tour_id
      t.integer :order_id
      t.float :star
      t.text :comment
      t.string :status

      t.timestamps
    end
  end
end
