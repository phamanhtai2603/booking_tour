class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :accounts, null: false, foreign_key: true
      t.references :reviews, null: false, foreign_key: true
      t.integer :account_id
      t.integer :review_id
      t.string :content

      t.timestamps
    end
  end
end
