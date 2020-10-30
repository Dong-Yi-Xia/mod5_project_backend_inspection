class InspectionSerializer < ActiveModel::Serializer
  attributes :id, :date, :time
  has_one :user
  has_one :restaurant
end
