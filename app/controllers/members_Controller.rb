class MembersController < ApplicationController
  def index
    @member = Member.all

  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
  end


  private

  def member_params
    params.require(:member).permit(:name, :email, :date_of_birth, :bio, :reference, :address)
  end
end
