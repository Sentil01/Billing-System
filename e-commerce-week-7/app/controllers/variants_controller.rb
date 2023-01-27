class VariantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category
  before_action :set_product
  before_action :set_variant, only: %i[show edit update destroy]

  def index
    @variants = @product.variants
  end

  def new
    @variant = @product.variants.new
  end

  def create
    @variant = @product.variants.new(variant_params)

    respond_to do |format|
      if @variant.save
        format.html { redirect_to category_product_variant_url(@category, @product, @variant), notice: "Variant was successfully created." }
        format.json { render :show, status: :created, location: @variant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @variant.update(variant_params)
        format.html { redirect_to category_product_variant_url(@category, @product, @variant), notice: "Variant was successfully updated." }
        format.json { render :show, status: :ok, location: @variant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @variant.destroy

    respond_to do |format|
      format.html { redirect_to category_product_variants_url(@category, @product), notice: "Variant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_category
    @category = Category.find(params[:category_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = @category.products.find(params[:product_id])
  end

  def set_variant
    @variant = @product.variants.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def variant_params
    params.require(:variant).permit(:name, :price, :product_id)
  end
end
