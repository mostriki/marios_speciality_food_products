class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content, :presence => true
  validates :content, length: { minimum: 50, maximum: 250 }
  validates :rating, :presence => true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 1..5, message: "must be less than or equal to 5" }

end
