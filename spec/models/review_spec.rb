require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :product_id }
  # it {should validate_length_of(:content). is_at_least(50).is_at_most(150)}
  # it {validates_numericality_of :rating, less_than_or_equal_to: 5}
  # it {validates_numericality_of :product_id, less_than_or_equal_to: 50)}
end
