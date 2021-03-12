class Language < ApplicationRecord
  has_many :race
  validates :index, presence: true
  validates :url, presence: true
end
