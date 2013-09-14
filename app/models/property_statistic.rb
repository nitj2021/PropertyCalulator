class PropertyStatistic < ActiveRecord::Base
	validates :area, :selling_price, :purchasing_price, presence: true
	validates_numericality_of	:area, :selling_price, :purchasing_price,greater_than: 0


	def profit_percentage
		# ROI = (cost of property - value of sale) / cost of property * 100
		((selling_price - purchasing_price) * 100.0)/purchasing_price
	rescue Exception => each 
		"0"
	end

	def profit_per_square
		(selling_price - purchasing_price)/(area * 1.0)
		rescue Exception => each 
		"0"
	end
end
