class OrderFormsController < ApplicationController
	before_filter :find_product
	#before_filter :find_order



	def index
		@order = @product.order_forms.all
	end

	def new
		@order = OrderForm.new

	    respond_to do |format|
	      format.html # new.html.erb
	      format.json { render json: @order }
	    end
	end

	def create
		@order = @product.order_forms.new(params[:order_form])

		respond_to do |format|
			if @order.save
				format.html { redirect_to product_order_forms_path(@product), notice: 'Order was successfuly placed!' }
			else
				format.html { render action: "new" }
			end
		end
	end



	private

	def find_order
		@order = @product.order_forms.find(params[:id])
	end

	def find_product
	    @product = Product.find(params[:product_id])
	end


end
