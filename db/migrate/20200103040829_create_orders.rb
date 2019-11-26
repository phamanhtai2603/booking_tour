class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :accounts, null: false, foreign_key: true
      t.integer :account_id
      t.integer :tour_id
      t.datetime :start_day
      t.datetime :end_day
      t.integer :amount
      t.float :total
      t.string :status
      t.string :have_rate

      t.timestamps
    end
  end
end
