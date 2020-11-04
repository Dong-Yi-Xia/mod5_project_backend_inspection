class Report < ApplicationRecord
  belongs_to :inspection

  def niceCreateOn
    self.created_at.strftime("%m/%d/%Y at %I:%M%p")
  end

end
