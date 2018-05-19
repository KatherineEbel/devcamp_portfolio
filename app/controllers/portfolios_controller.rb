class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[show edit update destroy]
  layout 'portfolio'
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html do
          redirect_to portfolios_path,
                      notice: 'Your new project is live!'
        end
      else
        format.html { render :new }
      end
    end
  end

  def edit
    3.times { @portfolio_item.technologies.build }
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params) then
        format.html { redirect_to portfolios_path, notice: 'Your project has been updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show; end

  def destroy
    @portfolio_item.destroy

    respond_to do |format|
      format.html do
        redirect_to portfolios_path, notice: 'Your project has been removed.'
      end
    end
  end

  private


  def portfolio_params
    params.require(:portfolio)
          .permit :title,
                  :subtitle,
                  :body,
                  technologies_attributes: [:name]
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.friendly.find(params[:id])
  end
end
