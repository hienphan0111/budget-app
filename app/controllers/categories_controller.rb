class CategoriesController < ApplicationController
  before_action :authenticate_user!
  helper CategoriesHelper

  @icon_list = [
    {
      name: 'Academic Cap',
      url: 'academic_cap.svg'
    }
  ]

  def index
    if current_user
      @categories = Category.includes(:trades).where(user: current_user)
    else
      redirect root_path
    end
  end

  def show
    if current_user
      @category = Category.find(params[:id])
      trades = @category.trades
      @trades = trades.sort_by { |t| -(t.created_at.to_i) }
    else
      redirect_to categories_path
    end
  end

  def new; end

  def create
    category = Category.new(category_params)
    category.user = current_user
    category.trades = []
    if category.save
      flash[:notice] = 'New category was created successfully'
      redirect_to categories_path
    else
      flash[:alert] = 'Error! Category could not create'
      redirect_to new_category_path
    end
  end

  private

  def category_params
    params.required(:category).permit(:name, :icon)
  end
end
