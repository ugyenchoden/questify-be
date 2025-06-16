require 'rails_helper'

RSpec.describe Role, type: :model do
  describe "associations" do
    it { is_expected.to have_many(:users).dependent(:restrict_with_error) }
  end
end
