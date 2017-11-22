require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    product = Product.create(:id => 1, :name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Sarah'
    fill_in 'Content', :with => 'Lorem ipsum dolor sit amet, consectetuer adipiscing'
    fill_in 'Rating', :with => 3
    click_on 'Create Review'
    expect(page).to have_content 'Sarah'
  end

  it "gives error when no name is entered" do
    product = Product.create(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => ''
    fill_in 'Content', :with => ''
    fill_in 'Rating', :with => ''
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
