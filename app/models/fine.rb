class Fine < ApplicationRecord
  belongs_to :loan

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true
  
end
