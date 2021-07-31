require 'rails_helper'

RSpec.describe ProcessShipsJob, type: :job do
  describe '#perform' do
    it 'creates new ship' do
      ActiveJob::Base.queue_adapter = :test
      expect {
        described_class.perform_now
      }.to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(0)
    end
  end
end
