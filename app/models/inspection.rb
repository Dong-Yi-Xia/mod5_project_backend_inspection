class Inspection < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :reports, dependent: :destroy 
  default_scope { order('created_at ASC') }


  def nicetime 
    self.time.strftime("%I:%M%p")
  end


end
