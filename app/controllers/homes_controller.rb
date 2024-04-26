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
        redirect_to homes_path , notice: "Message sent successfully!"
      else
        render :show
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
    params.require(:home).permit(:homesitting, :housesitting, :dvisits, :dob, :edod, :dog, :cat, :costmaxmin, :scales, :yard, :no-dog, :no-cat, :one-client, :non-neutered-dogs)

  end


end
