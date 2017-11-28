class ProductsController < ApplicationController
  def index
    @products = Product.all.limit(10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Thanks for adding to our menu!"
      redirect_to  products_path
    else
      render :new
    end
  end

  def edit
     @product = Product.find(params[:id])
   end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:alert] = "You have deleted the product #{@product.name}!"
      redirect_to products_path
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end
