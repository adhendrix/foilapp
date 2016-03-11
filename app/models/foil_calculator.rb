class FoilCalculator < ActiveRecord::Base

  def sheets_to_print
    self.sheet_quantity / self.sheets_per_parent_sheet
  end

  def total_size_in_inches
    self.sheets_to_print * self.inches_per_parent_sheet
  end

  def total_yardage
    self.total_size_in_inches / 36
  end
end
