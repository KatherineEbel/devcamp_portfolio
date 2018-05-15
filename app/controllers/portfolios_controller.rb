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

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    portfolio_data = params.require(:portfolio).permit(:title, :subtitle, :body)

    respond_to do |format|
      if @portfolio_item.update(portfolio_data) then
        format.html { redirect_to portfolios_path, notice: 'Your project has been updated.' }
      else
        format.html { render :edit }
      end
    end
  end
end
