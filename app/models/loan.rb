class Loan < ApplicationRecord
  belongs_to :student
  belongs_to :book
  belongs_to :librarian
  has_one :fine,dependent: :destroy


  validates :borrowed_at ,presence: true 
  validates :due_date,presence: true 
  validates :status ,presence: true 
end
