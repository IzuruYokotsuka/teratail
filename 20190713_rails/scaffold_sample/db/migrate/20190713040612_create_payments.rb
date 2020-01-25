class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :item
      t.integer :price
      t.string :category
      
      t.timestamps
    end
  end
end
