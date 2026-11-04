class CreateFines < ActiveRecord::Migration[7.1]
  def change
    create_table :fines do |t|
      t.references :loan, null: false, foreign_key: true
      t.decimal :amount
      t.string :status
      t.datetime :payment_date
      t.string :paid_via

      t.timestamps
    end
  end
end
