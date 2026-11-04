class Student < ApplicationRecord
  has_many :books, through: :loans
  has_many :fines, through: :loans
  has_many :loans, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :student_id, presence: true, uniqueness: true
  validates :phone_number, presence: true
end
