class Product < ActiveRecord::Base
	def self.find_products_for_sale
		find(:all, :order => "title" )
	end

	validates_presence_of :title, :description, :image_url
	validates_uniqueness_of :title
	validates_format_of :image_url,
:with => %r{\.(gif|jpg|png)$}i,
:message => 'must be a URL for GIF, JPG ' +
'or PNG image.'
end
