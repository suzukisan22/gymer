class Place < ApplicationRecord
  has_one :record
  validates :name, presence: true

end
