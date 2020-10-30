class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :name, :title
  has_many :inspections
  # has_many :reports
end
