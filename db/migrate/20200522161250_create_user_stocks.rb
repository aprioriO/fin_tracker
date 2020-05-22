class CreateUserStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stocks do |t|

      t.references :user, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      # t.integer :user_id, null: false
      # t.integer :stock_id, null: false
      t.timestamps
    end
  end
end
