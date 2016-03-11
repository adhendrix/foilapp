class Name < ActiveRecord::Base
  has_many :foil_items, :dependent => :destroy

  validates :foil_name, presence: true, uniqueness: true
  validates :pigment_code, presence: true, uniqueness: true

  accepts_nested_attributes_for :foil_items, :allow_destroy => true

  def name_with_pigment_code
    "#{self.foil_name} #{self.pigment_code}"
  end

  def sum_foil_used
    self.foil_items.map(&:foil_used_cal).sum
  end

  def sum_starting_foil_length
    self.foil_items.map(&:starting_foil_length_int).sum
  end

  def remaining_foil_length
    sum_starting_foil_length - sum_foil_used
  end


end
