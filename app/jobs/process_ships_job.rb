class ProcessShipsJob < ApplicationJob
  def perform
    ProcessShipsService.new.send
  end
end
