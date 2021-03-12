class Subrace < ApplicationRecord
  belongs_to :race
  validates :index, presence: true
  validates :url, presence: true
end
