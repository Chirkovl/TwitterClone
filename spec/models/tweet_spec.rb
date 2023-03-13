require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_length_of(:body).is_at_most(280) }
end
