require 'spec_helper'

describe 'the cart' do
  let(:jewellery){FactoryGirl.create(:product) }	

  it 'should initially be empty' do
  	visit product_path(jewellery)
  	expect(page).to have_css '.item_count', text: '0 items'
  end

  it 'can have items added to it' do
    visit product_path(jewellery)
  	expect(page).to have_css 'h3', text: 'Some Jewellery'
    click_button 'Add to Cart'

    expect(page).to have_css '.item_count', text: '1 item'
    expect(page).to_not have_css '.item_count', text: '1 items'
  end
  
  describe '/carts/:id' do
    it'has its own page'do
        visit '/'
        click_link 'cart-count'
        expect(page).to have_css 'h3', text: 'Your Cart'
    end
  end
end
