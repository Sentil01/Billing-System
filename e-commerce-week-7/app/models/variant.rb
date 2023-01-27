class Variant < ApplicationRecord
  validates :name,presence: true
  validates :name,uniqueness: true
  validates :price,numericality:{only_integer: true}
  belongs_to :product
end
