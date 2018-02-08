class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
    render :show
  end

  def new
    @category = Category.find(params[:category_id])
    @product = @category.products.new
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.new(product_params)
    if @product.save
      redirect_to category_path(@product.category)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :detail, :price, :image)
  end
end
