class Librarian < ApplicationRecord
  has_secure_password
  has_many :loans, dependent: :destroy

  validates :name , presence: true
  validates :email , uniqueness: true, presence: true
  validates :librarian_id , uniqueness: true, presence: true
  validates :phone_number, presence: true
end
