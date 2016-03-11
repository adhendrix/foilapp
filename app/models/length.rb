class Length < ActiveRecord::Base

  def foil_full_length
    if self.foil_length == "17 Yds"
      foil_full_length = 17
    elsif self.foil_length == "25 Yds"
      foil_full_length = 25
    elsif self.foil_length == "27 Yds"
      foil_full_length = 27
    elsif self.foil_length == "49 Yds"
      foil_full_length = 49
    elsif self.foil_length == "50 Yds"
      foil_full_length = 50
    elsif self.foil_length == "99 Yds"
      foil_full_length = 99
    else
      raise 'Selection does not exist'
    end

  end
end
