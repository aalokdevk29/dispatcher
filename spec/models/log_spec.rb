require 'rails_helper'

RSpec.describe Log, type: :model do
  it { is_expected.to belong_to(:ship) }
end
