require 'rails_helper'

describe GetShipService do
  subject(:service) { described_class.new }

  describe '#create' do
    context 'when service called' do
      let(:ship) { service.create }

      it 'creates new ship' do
        expect(ship).to be_truthy
        expect(ship.name).to eq 'Stephen Farrell Jr.'
        expect(ship.status).to eq 'arrived'
      end
    end
  end
end
