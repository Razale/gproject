require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "unique title" do
product = Product.new(:title => products(:ruby_book).title,
:description => "yyy" ,
:price => 1,
:image_url => "fred.gif" )
assert !product.save
assert_equal "has already been taken" , product.errors.on(:title)
end
end
