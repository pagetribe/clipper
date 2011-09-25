class Notebook < ActiveRecord::Base
  has_many :clippings, :dependent => :destroy
  #dependent removes clippings if notebook destroyed
  accepts_nested_attributes_for :clippings
end
