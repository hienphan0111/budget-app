class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      @categories = Category.includes(:trades).find_by(user_id: current_user.id)
    else
      redirect root_path
    end
  end

  def show
  end

  def new

  end

  def create

  end
end
