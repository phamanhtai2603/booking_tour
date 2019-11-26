class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :accounts, null: false, foreign_key: true
      t.integer :account_id
      t.integer :tour_id
      t.text :title
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
