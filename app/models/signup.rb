class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  def full_info
  self.camper.name + " " + self.activity.name + " " + self.time.to_s
  end

end
