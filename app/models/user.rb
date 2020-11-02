class User < ApplicationRecord
    has_many :inspections, dependent: :destroy 
    has_many :restaurants, through: :inspections, dependent: :destroy 
    has_many :reports, through: :inspections, dependent: :destroy 
    has_secure_password
    validates :username, presence: true, uniqueness: true

    
end
