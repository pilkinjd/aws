require 'rails_helper'

RSpec.describe Round, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_numericality_of(:arrows) }
  it { should validate_inclusion_of(:indoor_outdoor).in_array(["Indoor", "Outdoor", "Outdoor Metric"]) }
  it { should validate_inclusion_of(:scoring).in_array([5, 9, 10])}
end
