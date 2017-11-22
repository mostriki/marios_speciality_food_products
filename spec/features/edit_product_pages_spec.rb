require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create!(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    review = product.reviews.create!(:author => 'Steve', :content => 'Lorem ipsum dolor sit amet, consectetuer adipiscing', :rating => 3)
    visit product_path(product)
    click_on 'Edit Product'
    fill_in 'Name', :with => 'Veronica'
    fill_in 'Cost', :with => 20
    fill_in 'Origin', :with => 'Mexico'
    click_on 'Update Product'
    expect(page).to have_content 'Veronica'
  end

  it "gives error when no description is entered" do
    product = Product.create!(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    review = product.reviews.create!(:author => 'Steve', :content => 'Lorem ipsum dolor sit amet, consectetuer adipiscing', :rating => 3)
    visit product_path(product)
    click_on 'Edit Product'
    fill_in 'Name', :with => ''
    fill_in 'Cost', :with => ''
    fill_in 'Origin', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
