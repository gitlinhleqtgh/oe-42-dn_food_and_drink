class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = t("category.add_cate_success")
      redirect_to new_category_path
    else
      flash.now[:danger] = t("category.add_cate_fail")
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
