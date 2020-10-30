class ReportSerializer < ActiveModel::Serializer
  attributes :id, :note, :grade, :niceCreateOn
  # has_one :inspection
end
