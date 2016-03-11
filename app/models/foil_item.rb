class FoilItem < ActiveRecord::Base
  belongs_to :name
  belongs_to :make
  belongs_to :length

  def foil_used_cal
    self.length.foil_full_length - self.foil_used_length
  end

  def starting_foil_length_int
    self.length.foil_full_length
  end

  def date_updated_converted
    self.updated_at.to_formatted_s(:long)
  end

end
