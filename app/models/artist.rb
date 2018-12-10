class Artist < ApplicationRecord
  has_many :lps

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10, maximum: 250 }
end
