class DisguisesController < ApplicationController
  def index
    @disguises = Disguise.all 
  end

  def show
    @disguise = Disguise.find(params[:id])
  end

  def new
    @disguise = Disguise.new
  end

  def create
      @disguise = Disguise.new(disguise_params)
      @disguise.user = current_user

      if @disguise.save
        redirect_to disguise_path(@disguise)
      else
        render :new
      end
    
  end

  def edit
    @disguise = Disguise.find(params[:id])
    @disguise.user = current_user

    if @disguise.save
      redirect_to disguise_path(@disguise)
    else
      render :new
    end
  end

  def update
    @disguise = Disguise.find(params[:id])
    @disguise.update(params[:disguise])
  end

  def destroy
    @disguise = Disguise.find(params[:id])
    @disguise.destroy

    redirect_to disguises_path
  end

  private 

  def disguise_params
      params.require(:disguise).permit(:title, :photo)
  end
end
