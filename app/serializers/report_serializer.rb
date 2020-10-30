class ReportSerializer < ActiveModel::Serializer
  attributes :id, :note, :grade
  # has_one :inspection
end
