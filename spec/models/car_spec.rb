require 'rails_helper'

RSpec.describe Car, type: :model do
  it { is_expected.to validate_presence_of(:make) }
  it { is_expected.to validate_presence_of(:model) }
  it { is_expected.to validate_presence_of(:year) }
  it { is_expected.to validate_numericality_of(:price).is_less_than(1_000_000.00).is_greater_than(0.00) }
  it { is_expected.to validate_inclusion_of(:year).in_range(1769..Time.zone.now.year) }
end
