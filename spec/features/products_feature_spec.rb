require 'spec_helper'

def create_product(some_name)
  Product.create({:name => some_name})
end


describe 'the products section' do
  before(:all) do
    create_product 'Some Jewellery'
  end

  describe '/products/:id' do
    it 'has its own page' do
      visit '/products'
      click_link 'Some Jewellery'

      expect(page).to have_css 'h3', text: 'Some Jewellery'
    end
  end

end 
