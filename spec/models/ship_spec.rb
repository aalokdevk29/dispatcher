require 'rails_helper'

RSpec.describe Ship, type: :model do
  it { is_expected.to have_many(:logs) }
  it { should define_enum_for(:status).with_values([:arrived, :queue, :processed]) }

  describe '#update_log' do
    let(:ship) { create(:ship) }

    context 'when ship created' do
      it 'create log' do
        ship.reload
        expect(Log.last.ship_id).to eq ship.id
      end
    end
  end
end
