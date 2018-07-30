class TrainingMenu < ApplicationRecord
  has_one :record
  validates :title, presence: true
end
