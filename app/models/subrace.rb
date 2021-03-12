class Subrace < ApplicationRecord
  belongs_to :races
  validates :index, presence: true
  validates :url, presence: true
end
