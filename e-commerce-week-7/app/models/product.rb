class Product < ApplicationRecord
  validates :name, :description,presence: true
  validates :name,uniqueness: true
  validates :description,length:{maximum:200}
  self.per_page = 10
  # ============== Associations ===========
  belongs_to :category
  belongs_to :user

  has_many :variants, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_and_belongs_to_many :users, join_table: 'users_products_read_status'
end
