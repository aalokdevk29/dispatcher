require 'rails_helper'

RSpec.describe "Ships", type: :request do
  let!(:ship_1) { create(:ship) }
  let!(:ship_2) { create(:ship) }

  describe "GET /index" do
    it 'returns all ships' do
      get '/ships'
      expect(response.status).to eq 200
    end
  end

  describe "GET /show" do
    it 'returns ships with param id' do
      get "/ships/#{ship_1.id}"
      expect(response.status).to eq 200
    end
  end

  describe 'GET /update_queue' do
    it 'updates ship status and redirect to root' do
      get "/ships/#{ship_1.id}/update_queue"

      ship_1.reload
      expect(ship_1.status).to eq 'queue'
      expect(response.status).to eq 302
    end
  end

  describe 'GET /ships_queue' do
    let!(:ship_3) { create(:ship, status: :queue) }

    it 'returns all ships with status queue' do
      ship_1.update(status: :queue)
      get "/ships/ships_queue"
      expect(response.status).to eq 200
    end
  end

end
