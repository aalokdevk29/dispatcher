class Ship < ApplicationRecord
  has_many :logs, dependent: :destroy
  after_save :update_log

  enum status: {
    arrived: 0,
    queue: 1,
    processed: 2
  }

  private

  def update_log
    msg = "#{name} updated at #{Time.now}"
    Log.create!(ship_id: id, log_data: msg)
  end
end
