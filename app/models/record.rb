class Record < ApplicationRecord
  belongs_to :training_menu
  accepts_nested_attributes_for :training_menu
  belongs_to :place
  accepts_nested_attributes_for :place

  belongs_to :user
  
end
