class MortagesController < ApplicationController
  before_action :set_mortage, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @mortages = Mortage.all
  end

  def show
  end

  def new
    @mortage = Mortage.new
  end

  def create
    @mortage = Mortage.create(mortage_params)
    if @mortage.save
      redirect_to_rmortage_path(@mortage)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @mortage.update(params[:mortage])
    redirect_to_mortage_path
  end

  def destroy
    @mortage.destroy
    redirect_to mortages_path
  end

  private
  def set_mortage
    @mortage = Mortage.find(params[:id])
  end

  def mortage_params
    params.require(:mortage).permit(:rate, :amount, :firstname, :lastname, :referer)
  end


end
