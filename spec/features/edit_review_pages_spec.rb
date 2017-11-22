require 'rails_helper'

# describe "the edit a review process" do
#   it "edits a review" do
#     product = Product.create(:name => 'Home stuff', :cost => '20', :origin => 'Alabama')
#     review = Review.create(:author => 'Allyria Desmond', :content => 'jsenssas8wqruhui6gledrrtraecefsadd9qkv0q8icwvdbpo5p', :rating => 3, :product_id => product.id)
#     visit product_path(product)
#     click_on 'Edit'
#     fill_in 'Author', :with => 'Allyria Ham'
#     fill_in 'Content', :with => 'jsensl7z8wqruhui6gledrrtraecefes099qkv0q8icwvdbpo5p'
#     fill_in 'Rating', :with => '2'
#     click_on 'Update Review'
#     expect(page).to have_content 'Allyria Ham'
#     expect(page).to have_content 'jsensl7z8wqruhui6gledrrtraecefes099qkv0q8icwvdbpo5p'
#     expect(page).to have_content '2'
#   end
#
#   it "gives error when no description is entered" do
#     product = Product.create(:name => 'Home stuff', :cost => '20', :origin => 'Alabama')
#     review = Review.create(:author => 'Allyria Desmond', :content => 'jsenssas8wqruhui6gledrrtraecefsadd9qkv0q8icwvdbpo5p', :rating => 3, :product_id => product.id)
#     visit product_path(product)
#     click_on 'Edit'
#     fill_in 'Author', :with => ''
#     fill_in 'Content', :with => ''
#     fill_in 'Rating', :with => ''
#     click_button 'Update Review'
#     expect(page).to have_content 'errors'
#   end
# end
