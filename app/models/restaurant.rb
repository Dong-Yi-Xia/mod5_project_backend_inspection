class Restaurant < ApplicationRecord
    has_many :inspections, dependent: :destroy 
end
