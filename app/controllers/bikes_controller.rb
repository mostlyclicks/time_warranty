class BikesController < ApplicationController
  before_action :find_user
  before_action :find_bike, only: [:show]
  
  def new
    @bike = @user.bikes.new
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def create
    @bike = @user.bikes.new bike_params
    if @bike.save
      flash[:notice] = "You have successfully register your bike"
      redirect_to user_bike_path(@user, @bike)
    else
      render 'new'
    end
  end

  private

    def find_user
      @user = User.find(params[:user_id])
    end

    def find_bike
      @bike = Bike.find(params[:id])
    end

    def bike_params
      params.require(:bike).permit(:bike_model, :bike_other, :serial_number, :date_purchased, :bike_dealer,
        :bike_saddle_height, :bike_saddle_bar, :bike_bar_drop, :bike_image, :bike_receipt, 
        :bike_image_file_name, :bike_receipt_file_name)
    end


end
