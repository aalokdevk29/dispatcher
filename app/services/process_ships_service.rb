class ProcessShipsService
  BASE_URL = 'http://localhost:3002/api/v1'.freeze

  def send
    ships_queue = Ship.queue

    ships_queue.each do |ship|
      response = process_ship_queue(ship)
      update_response(ship, JSON.parse(response))
    end
  rescue StandardError => e
    puts "Rescued: #{e.inspect}"
  end

  private

  def process_ship_queue(ship)
    uri = URI("#{BASE_URL}/processing_ships/new")
    params = ship.as_json
    uri.query = URI.encode_www_form(params)
    Net::HTTP.get(uri)
  end

  def update_response(ship, data)
    ship.update(status: data['status'])
  end
end
