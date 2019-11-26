class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.references :accounts, null: false, foreign_key: true
      t.integer :category_id
      t.integer :account_id
      t.text :title
      t.text :content
      t.string :image
      t.float :avg_rate
      t.integer :rate_amount
      t.string :price
      t.string :integer

      t.timestamps
    end
  end
end
