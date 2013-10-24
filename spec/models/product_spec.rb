require 'spec_helper'

describe Product do

  it 'can have an attached image' do
    product = Product.create! image: example_image
    # a way to debug 
    # raise product.inspect
    expect(product.image.exists?).to be_true
  end

  it 'can have an thumbnail' do
    product = Product.create image: example_image
    expect(product.image.exists?(:thumb)).to be_true
  end

end

# class Product
# 	def image=(file)
# 		image_file_name = file.path	
# 		image_content_type = file.type
# 		image_file_size = file.size
# 		image_updated_at = Time.now
# 	end
 # example_image is the arugment give vause is file
