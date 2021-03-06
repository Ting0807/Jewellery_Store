require 'spec_helper'

describe 'when I create a product' do

 it 'can have an uploaded product image' do
  visit new_product_path
  
  attach_file 'Image', example_image_path
  click_button 'Create product'

  expect(page).to have_css 'img.product_image'
 end	

end