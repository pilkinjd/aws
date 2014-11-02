class Round < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :arrows, numericality: { only_integer: true }
  validates :indoor_outdoor, inclusion: { in: ["Indoor", "Outdoor", "Outdoor Metric"] }
  validates :scoring, inclusion: { in: [5, 9, 10] }
  validates :official, inclusion: { in: [true, false] }
end
