class Usage < ActiveRecord::Base
  belongs_to :activity
  belongs_to :activity_variant

  validates :activity, presence: true
  validates :activity_variant, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true
end
