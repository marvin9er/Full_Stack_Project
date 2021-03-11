class Race < ApplicationRecord
  has_many :subraces
  validates :index, presence: true
  validates :url, presence: true
end
