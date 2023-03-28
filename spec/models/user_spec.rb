require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:tweets).dependent(:destroy) }

  it { is_expected.to validate_uniqueness_of(:username).case_insensitive.allow_blank }

  describe "#set_display_name" do
    context "when display name is set" do
      it "does not change the display_name" do
        user = build(:user, username: "john", display_name: "John")
        user.save
        expect(user.reload.display_name).to eq("John")
      end
    end

    context "when display name is not set" do
      it "humanizes the previosly set username" do
        user = build(:user, username: "john", display_name: nil)
        user.save
        expect(user.reload.display_name).to eq("John")
      end
    end
  end
end
