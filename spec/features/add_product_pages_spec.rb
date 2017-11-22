require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create'
    fill_in 'Name', :with => 'Turkey'
    fill_in 'Cost', :with => '20'
    fill_in 'Origin', :with => 'Alabama'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
