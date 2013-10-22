class Item
	attr_reader :cost, :qty, :name

	def initialize(name,cost,qty)
		@cost = cost
		@name = name
		@qty =qty
	end

	def subtotal
		@cost * @qty
	end
end