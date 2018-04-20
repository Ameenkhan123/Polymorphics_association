class ProductsController < ApplicationController
 def index
		@products = Product.all
		  @image = Image.new
	end
def new
	@product = Product.new
	 @product.images.build

end
def create
	@product = Product.new(product_params)
	if @product.save
		redirect_to @product
	else
		render 'new'
	end
end
def show
	@product = Product.find(params[:id])
end


def edit
	@product = Product.find(params[:id])
end

def update
	@product= Product.find(params[:id])
	if @product.update(product_params)
	redirect_to @product
else
	render 'edit'
end
end
def destroy
	@product = Product.find(params[:id])
	@product.destroy

	redirect_to products_path
end

private
def product_params
	params.require(:product).permit(:price,:name,:description, images_attributes: [:id, :image, :imageable_type, :imageable_id, :_destroy])
end

end
