class TradesController < ApplicationController
  before_action :authenticate_user!

  def new
    @category = Category.find(params[:category_id])
  end

  def create
    trade = Trade.new(name: trade_params[:name], amount: trade_params[:amount])
    trade.author = current_user
    trade.categories << Category.find(trade_params[:category])
    if trade.save
      flash[:notice] = 'New trade was created successfully'
      redirect_to categories_path
    else
      flash[:alert] = 'Error! Could not create new trade'
      redirect_to new_trade_path
    end
  end

  private

  def trade_params
    params.required(:trade).permit(:name, :amount, :category)
  end
end
