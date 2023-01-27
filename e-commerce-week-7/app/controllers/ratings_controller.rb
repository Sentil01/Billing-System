class RatingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category
  before_action :set_product

  def create
    @rating = Rating.new(rating_params)

    respond_to do |format|
      format.html {
        redirect_to(
          category_product_path(@category, @product),
          notice: @rating.save ? 'Rating saved successfully.' : 'Rating not saved.'
        )
      }
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_product
    @product = @category.products.find(params[:product_id])
  end

  def rating_params
    params.require(:rating).permit(:product_id, :star)
  end
end
