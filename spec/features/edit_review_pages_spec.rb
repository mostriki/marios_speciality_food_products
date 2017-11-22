require 'rails_helper'

describe "the edit a review process" do
  it "edits a review" do
    product = Product.create!(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    review = product.reviews.create!(:author => 'Steve', :content => 'Lorem ipsum dolor sit amet, consectetuer adipiscing', :rating => 3)
    visit product_path(product)
    click_link 'Edit'
    fill_in 'Author', :with => 'Veronica'
    fill_in 'Content', :with => 'Lorem ipsum dolor sit amet, consectetuer adipiscing hdsjhs'
    fill_in 'Rating', :with => 2
    click_on 'Update Review'
    expect(page).to have_content 'Veronica'
  end

  it "gives error when no description is entered" do
    product = Product.create!(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    review = product.reviews.create!(:author => 'Steve', :content => 'Lorem ipsum dolor sit amet, consectetuer adipiscing', :rating => 3)
    visit product_path(product)
    click_link 'Edit'
    fill_in 'Author', :with => ''
    fill_in 'Content', :with => ''
    fill_in 'Rating', :with => ''
    click_button 'Update Review'
    expect(page).to have_content 'errors'
  end
end
