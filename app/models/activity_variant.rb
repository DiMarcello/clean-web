class ActivityVariant < ActiveRecord::Base
  belongs_to :activity
  has_many :usages

  validates :activity, presence: true
  validates :name, presence: true
end
