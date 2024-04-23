class MembersController < ApplicationController
  def index
    @member = Member.all

  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
      if @member.save
        redirect_to @member
      else
         render :new, status: :unprocessable_entity
      end
  end


  private

  def member_params
    params.require(:member).permit(:name, :email, :date_of_birth, :content, :reference, :address)
  end
end
