require 'spec_helper'

def create_product
  FactoryGirl.create(:product)
end


describe 'the products section' do
  before(:all) do
    create_product
  end

  describe '/products/:id' do
    it 'has its own page' do
      visit '/products'
      click_link 'Some Jewellery'

      expect(page).to have_css 'h3', text: 'Some Jewellery'
    end
  end

  describe '/products/new' do
    
    it 'creates a new prouct' do
      visit '/products/new'

      within '.new_product' do
        fill_in 'product_name', with: 'new Jewellery'
        click_button "Create product"
      end


      expect(current_url).to eq url_for(Product.last)
      expect(page).to have_content 'new Jewellery'
    end
  end 

end 
