class ShipsController < ApplicationController
  before_action :find_ship, only: %i[show update_queue destroy]

  def index
    @ships = Ship.all
  end

  def show
    @ship
  end

  def update_queue
    @ship.update(status: :queue)
    redirect_to ships_path(@ship)
  end

  def destroy
    @ship.destroy
    redirect_to ships_path(@ship)
  end

  def ships_queue
    @ships = Ship.queue
  end

  private

  def find_ship
    @ship = Ship.find(params[:id])
  end
end
