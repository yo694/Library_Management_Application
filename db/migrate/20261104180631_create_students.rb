class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :student_id
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :address

      t.timestamps
    end
  end
end
