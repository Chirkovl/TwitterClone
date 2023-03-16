require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:tweets).dependent(:destroy) }

  it { is_expected.to validate_uniqueness_of(:username).case_insensitive.allow_blank }
end
