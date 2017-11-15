class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :restaurant
  validates_inclusion_of :value, :in => 1..5
end
