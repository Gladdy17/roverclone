class MembersController < ApplicationController
  def index
    @member = Member.all

  end

  def new
    @member = Member.new
  end

  def show

  end


  def create
    @member = Member.new(member_params)
      if @member.save
        redirect_to members_path
      else
         render :new, status: :unprocessable_entity
      end
  end

  def edit
    @member = Member.find(params[:id])
    if @member.save
      redirect_to root_path
    else
     render :new, status: :unprocessable_entity
    end

  end

  def destroy
    @member = Member.find(params[:id])
    if @member.destroy
      redirect_to root_path, notice: "Member was successfully deleted."
    else
      redirect_to root_path, alert: "Unable to find member."
    end
  end

  private

  def member_params
    params.require(:member).permit(:name, :email, :date_of_birth, :content, :reference, :address)
  end
end
