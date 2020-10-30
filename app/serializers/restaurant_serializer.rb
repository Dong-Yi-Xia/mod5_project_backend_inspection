class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :thumb, :address, :lat, :lon
end
