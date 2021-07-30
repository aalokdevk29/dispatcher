class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @ship = get_ship
  end

  def update_queue
    get_ship.update(status: :queue)
    redirect_to ships_path(get_ship)
  end

  def destroy
    get_ship.destroy
    redirect_to ships_path(get_ship)
  end

  def ships_queue
    @ships = Ship.queue
  end

  private

  def get_ship
    Ship.find(params[:id])
  end
end
