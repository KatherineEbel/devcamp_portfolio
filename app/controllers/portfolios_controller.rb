class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    portfolio_data = params.require(:portfolio).permit(:title, :subtitle, :body)
    @portfolio_item = Portfolio.new(portfolio_data)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your new project is live!' }
      else
        format.html { render :new }
      end
    end
  end
end
