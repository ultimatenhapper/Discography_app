class Lp < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 250 }
end
