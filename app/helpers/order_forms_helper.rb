module OrderFormsHelper
	def total_order(order)
		if order.product.discount
			order.quantity * (order.product.price - order.product.discount)
		else
			order.quantity * order.product.price
		end
	end
end
