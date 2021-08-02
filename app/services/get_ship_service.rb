class GetShipService
  BASE_URL = 'https://secure-shore-28533.herokuapp.com/api/v1'.freeze

  def create
    uri = URI("#{BASE_URL}/create_ships/new")
    response = Net::HTTP.get(uri)
    store_data(JSON.parse(response))
  rescue StandardError => e
    puts "Rescued: #{e.inspect}"
  end

  private

  def store_data(data)
    Ship.create!(
      name: data['name'],
      origin: data['origin'],
      passengers_count: data['passenger_count'],
      status: data['status']
    )
  end
end
