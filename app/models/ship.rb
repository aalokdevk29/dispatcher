class Ship < ApplicationRecord
  has_many :logs, dependent: :destroy

  enum status: {
    arrived: 0,
    queue: 1,
    processed: 2
  }
end
