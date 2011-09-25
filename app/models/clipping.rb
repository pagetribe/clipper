class Clipping < ActiveRecord::Base
  belongs_to :notebook
  accepts_nested_attributes_for :notebook, :reject_if => proc {|attributes| attributes['name'].blank? }
  # reject_if = don't save a notbook if there is no notebook name
end
