class GetShipsJob < ApplicationJob
  def perform
    GetShipService.new.create
  end
end
