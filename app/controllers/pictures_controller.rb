class PicturesController < ApplicationController
  before_filter :authenticate_admin!, except: [:index]
  before_filter :find_product
  before_filter :find_picture, only: [:edit, :update, :show, :destroy]

  # GET /pictures
  # GET /pictures.json
  def index
    #@pictures = Picture.all
    @pictures = @product.pictures.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures }
    end
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
    #@picture = Picture.find(params[:id])
    @picture = @product.pictures.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.json
  def new
    #@picture = Picture.new
    @picture = @product.pictures.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    #@picture = Picture.find(params[:id])
    #@picture = @product.picture.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.json
  def create
    #@picture = Picture.new(params[:picture])
    @picture = @product.pictures.new(params[:picture])

    respond_to do |format|
      if @picture.save
        format.html { redirect_to product_pictures_path(@product), notice: 'Picture was successfully created.' }
        format.json { render json: @picture, status: :created, location: @picture }
      else
        format.html { render action: "new" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pictures/1
  # PUT /pictures/1.json
  def update
    #@picture = Picture.find(params[:id])

    respond_to do |format|
      if @picture.update_attributes(params[:picture])
        format.html { redirect_to product_pictures_path(@product), notice: 'Picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end



  private

  def find_picture
    @picture = @product.pictures.find(params[:id])
  end

  def find_product
    @product = Product.find(params[:product_id])
  end


end
