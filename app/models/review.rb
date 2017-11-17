class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content, :presence => true
  validates :content, length: { minimum: 50, maximum: 250 }
  validates :rating, :presence => true
  # validates :rating, numericality: { only_integer: true }
  # validates :rating, inclusion: { in: 1..5, "must be less than or equal to 5" }
  validates :product_id, :presence => true
  # validates :product_id, numericality: { only_integer: true }
  # validates :password, inclusion: { in: 1..50, "must be less than or equal to 50" }

end
