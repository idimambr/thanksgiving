class CreateShoplists < ActiveRecord::Migration[5.0]
  def change
    create_table :shoplists do |t|
      t.string :name
      t.string :items
      t.integer :amount
      t.timestamps
    end
  end
end
