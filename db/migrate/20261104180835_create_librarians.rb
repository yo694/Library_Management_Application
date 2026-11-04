class CreateLibrarians < ActiveRecord::Migration[7.1]
  def change
    create_table :librarians do |t|
      t.string :librarian_id
      t.string :name
      t.string :phone_number
      t.string :password_digest

      t.timestamps
    end
  end
end
