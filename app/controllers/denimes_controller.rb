class DenimesController < ApplicationController
  before_action :set_denime, only: [:show, :edit, :update, :destroy]
  
  def index
    @denimes = Denime.all
  end

  def show
    set_denime
  end

  def new
    @denime = Denime.new
  end

  def create
     @denime = Denime.new(message_params)

    if @denime.save
      flash[:success] = 'DENIME が正常に投稿されました'
      redirect_to @denime
    else
      flash.now[:danger] = 'DENIME が投稿されませんでした'
      render :new
    end
  end

  def edit
    set_denime
  end

  def update
  end

  def destroy
  end
  
  private
  
  def set_denime
    @denime = Denime.find(params[:id])
  end
  
  # Strong Parameter
  def message_params
    params.require(:denime).permit(:brand, :model, :boulder, :washing, :valuation, :comment, :price, :dey, :size, :weight)
  end
  
end
