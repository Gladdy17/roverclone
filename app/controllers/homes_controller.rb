class HomesController < ApplicationController
  def index
    @home = Home.all

  end

  def new
    @home = Home.new

  end

  def show
    @home = Home.find(params[:id])
  end

  def create
    @home = Home.new(home_params)
      if @home.save
        redirect_to @home, notice: "Message sent successfully!"
      else
        render :new
      end
  end

  def edit
    @home = Home.find(params[:id])
    if @home.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def destroy

  end

  private
  def home_params
    params.require(:home).permit(:homesitting, :housesitting, :dvisits, :dob, :edod, :dogs, :cat, :costmaxmin, :scales, :yard, :no_dog, :no_cat, :one_client, :non_neutered_dogs)

  end


end
