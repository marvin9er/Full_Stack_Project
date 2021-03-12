class Race < ApplicationRecord
  has_many :subraces
  has_many :traits
  has_many :languages
  validates :index, presence: true
  validates :url, presence: true
end
