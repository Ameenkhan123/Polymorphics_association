class PortfoliosController < ApplicationController
def index
		@portfolios = Portfolio.all
	end
def new
	@portfolio = Portfolio.new
end
def create
	@portfolio = Portfolio.new(portfolio_params)
	if @portfolio.save
		redirect_to @portfolio
	else
		render 'new'
	end
end
def show
	@portfolio = Portfolio.find(params[:id])
end


def edit
	@portfolio = Portfolio.find(params[:id])
end

def update
	@portfolio= Portfolio.find(params[:id])
	if @portfolio.update(portfolio_params)
	redirect_to @portfolio
else
	render 'edit'
end
end
def destroy
	@portfolio = Portfolio.find(params[:id])
	@portfolio.destroy

	redirect_to portfolios_path
end
private
def portfolio_params
	params.require(:portfolio).permit(:name, :description, images_attributes: [:id, :image, :imageable_type, :imageable_id, :_destroy])
end

end
