class OrderFormsController < ApplicationController
	before_filter :authenticate_admin!, only: [:index]
	before_filter :find_product
	#before_filter :find_order



	def index
		#@order = @product.order_forms.all
		@order = OrderForm.all
	end

	def new
		@order = OrderForm.new
		@product = Product.find(params[:product_id])

	    respond_to do |format|
	      format.html # new.html.erb
	      format.json { render json: @order }
	    end
	end

	def create
		@order = @product.order_forms.new(params[:order_form])

		respond_to do |format|
			if @order.save
				format.html { redirect_to root_path, notice: 'Order was successfuly placed!' }
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
	end


end
