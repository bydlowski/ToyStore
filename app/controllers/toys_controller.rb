class ToysController < ApplicationController

  # GET /toys
  # GET /toys.json
  def index
    @toys = Toy.all
  end

  # GET /toys/1
  # GET /toys/1.json
  def show
    @toy = Toy.find(params[:id])
    @cart_action = @toy.cart_action current_user.try :id
  end

end
