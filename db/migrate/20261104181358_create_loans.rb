class CreateLoans < ActiveRecord::Migration[7.1]
  def change
    create_table :loans do |t|
      t.references :student, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.references :librarian, null: false, foreign_key: true
      t.datetime :borrowed_at
      t.date :due_date
      t.datetime :returned_at
      t.string :status

      t.timestamps
    end
  end
end
