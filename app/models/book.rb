class Book < ApplicationRecord
  has_many :loans , dependent: :destroy
  has_many :students, through: :loans
  has_many :fines, through: :loans

  validates :title, presence: true
  validates :author, presence: true
  validates :book_id, uniqueness: true, presence: true
  validates :total_quantity,presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :available_quantity, presence: true , numericality: { greater_than_or_equal_to: 0 }
end
