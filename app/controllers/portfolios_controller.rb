class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
    @stocks = Stock.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end