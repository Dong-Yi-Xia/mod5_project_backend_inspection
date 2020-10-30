class InspectionSerializer < ActiveModel::Serializer
  attributes :id, :date, :nicetime
  has_many :reports
  # has_one :user
  # has_one :restaurant
end
