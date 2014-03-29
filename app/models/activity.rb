class Activity < ActiveRecord::Base
  has_many :usages
  has_many :variants, class_name: "ActivityVariant"
  validates :name, presence: true
end
