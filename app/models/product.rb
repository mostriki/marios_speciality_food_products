class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :cost, numericality: { only_integer: true }
  validates :cost, inclusion: { in: 1..20, message: "must be less than or equal to 20" }
  validates :origin, :presence => true
end
