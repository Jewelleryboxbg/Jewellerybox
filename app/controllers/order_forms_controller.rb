class OrderFormsController < ApplicationController
	before_filter :authenticate_admin!, only: [:index]
	before_filter :find_product, only: [:show, :new, :create]
	before_filter :find_order, only: [:shipped, :show]



	def index
		#@order = @product.order_forms.all
		@order = OrderForm.all
	end

	def show 

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
				format.html { redirect_to root_path, notice: 'Your order was successfull! Feel free to contact us for its status at: office@jewellerybox.bg' }
			else
				format.html { render action: "new" }
			end
		end
	end

	def shipped
		#@product = Product.find(params[:product_id])
		#@order = @product.order_form.find(params[:order_form_id])
		#@order = OrderForm.find(params[:_id])
		#@order = @product.order_forms.find_by_id(params[:id])
		#@product = Product.find_by_id(params[:product_id])
		#@order = @product.orders.find(params[:order_form])
		#@product = Product.find_by_id(params[:product_id])
		@order = @product.order_forms.find(params[:id])
		@order.shipped = true
		@order.save
		redirect_to orders_url
	end

	def not_shipped
		@order = @product.order_forms.find(params[:id])
		@order.shipped = false
		@order.save
		redirect_to orders_url
	end



	private

	def find_order
		#@order = @product.order_forms.find_by_id(params[:id])
		#@order = @product.order_forms.find_by_id(params[:order_form_id])
	end

	def find_product
		@product = Product.find(params[:product_id])
		#@product = Product.find_by_id(params[:product_id])
	end


end
