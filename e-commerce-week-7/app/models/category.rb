class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, :description,presence: true
  validates :name,uniqueness: true
  validates :description,length:{maximum:200}

end
