class CreateUserStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stocks do |t|
      t.string :user
      t.string :references
      t.string :stock
      t.string :references

      t.timestamps
    end
  end
end
