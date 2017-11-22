require 'rails_helper'

describe "the destroy a product process" do
  it "destroys a new product" do
    product = Product.create!(:name => 'Yvonne', :cost => 20, :origin => 'United States of America')
    visit product_path(product)
    click_on 'Delete Product'
    expect(page).to have_content 'There are no reviews yet!'
  end
end
