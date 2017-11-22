require 'rails_helper'

describe "the destroy a review process" do
  it "destroys a new review" do
    product = Product.create(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    review = Review.create(:author => 'Steve', :content => 'Lorem ipsum dolor sit amet, consectetuer adipiscing', :rating => 3, :product_id => product.id)
    visit product_path(product)
    click_on 'Delete'
    expect(page).to have_content 'There are no reviews yet!'
  end
end
