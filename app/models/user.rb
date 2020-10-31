class User < ApplicationRecord
    has_many :inspections
    has_many :restaurants, through: :inspections
    has_many :reports, through: :inspections
    has_secure_password
    validates :username, presence: true, uniqueness: true

    
end
