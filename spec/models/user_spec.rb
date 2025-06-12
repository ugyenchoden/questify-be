require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:role) }
    it { is_expected.to have_one(:profile).dependent(:destroy) }
  end
end
