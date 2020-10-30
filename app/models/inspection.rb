class Inspection < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :reports

  def nicetime 
    self.time.strftime("%I:%M%p")
  end


end
