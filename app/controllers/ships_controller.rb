class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @ship = ship
  end

  def update_queue
    ship.update(status: :queue)
    redirect_to ships_path(ship)
  end

  def destroy
    ship.destroy
    redirect_to ships_path(ship)
  end

  def ships_queue
    @ships = Ship.queue
  end

  private

  def ship
    Ship.find(params[:id])
  end
end
