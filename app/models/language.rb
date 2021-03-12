class Language < ApplicationRecord
  has_many :races
  validates :index, presence: true
  validates :url, presence: true
end
