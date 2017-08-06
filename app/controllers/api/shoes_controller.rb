require 'json'
class Api::ShoesController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  before_action :set_shoe, only: [:show, :update, :destroy]

  def index
    @shoes = Shoe.all
    render json: @shoes
  end


  def create
    @shoe = Shoe.new(shoe_params)

    respond_to do |format|
      if @shoe.save
        format.json { render :show, status: :created, location: @shoe }
      else
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    render :show
  end

  def update
    respond_to do |format|
      if @shoe.update(shoe_params)
        format.json { render :show, status: :ok, location: @shoe }
      else
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shoe.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
  def set_shoe
    @shoe = Shoe.find(params[:id])
  end

  def shoe_params
    params.require(:shoe).permit(:model, :brand_id, :isbn, :release_year, :sku, :photo)
  end


end
