class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :author
      t.string :category
      t.integer :total_quantity
      t.integer :available_quantity

      t.timestamps
    end
  end
end
