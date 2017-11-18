class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :cost, numericality: { only_integer: true }
  validates :cost, inclusion: { in: 1..20, message: "must be less than or equal to 20" }
  validates :origin, :presence => true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3) }
  scope :made_in_the_usa, -> { where(origin: "United States of America")}

  scope :most_reviews, -> {(select("products.id, products.name, products.cost, products.origin, count(reviews.id) as reviews_count").joins(:reviews).group("products.id").order("reviews_count DESC").limit(10))}
end
