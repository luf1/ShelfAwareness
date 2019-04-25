# Project name: ShelfAwareness
# # Description: Aims to improve/facilitate literacy through social media and donations of books
# # Filename: donors_controller.rb
# # Description: controller for donor module
# # Last modified on: 4/25/2019
# # License: This code was adpated from https://guides.rubyonrails.org/getting_started.html#the-first-form under the Creative Commons Attribution-ShareAlike 4.0 International License

class DonorsController < ApplicationController
  def index
    @wishes = Wish.all
  end

  def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
  end
  
  def edit
    @donor = Donor.find(params[:id])
  end

  def create
    @donor = Donor.new(donor_params)

    if @donor.save
      redirect_to @donor
    else
      render 'new'
    end
  end

  def update
    @donor = Donor.find(params[:id])
    
    if @donor.update(donor_params)
      redirect_to @donor
    else
      render 'edit'
    end
  end
  
  def destroy
    @donor = Donor.find(params[:id])
    @donor.destroy

    redirect_to donors_path
  end

 private
    def donor_params
      params.require(:donor).permit(:name, :message)
    end
end
