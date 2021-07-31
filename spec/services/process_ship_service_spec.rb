require 'rails_helper'

describe ProcessShipsService do
  subject(:service) { described_class.new }
  let!(:ship) { create(:ship, status: :queue) }

  describe '#send' do
    context 'when service called' do
      let(:ship_queue) { service.send }

      it 'process ship and update status' do
        expect(ship_queue).to be_truthy
        ship.reload
        expect(ship.status).to eq 'processed'
      end
    end
  end
end
