require 'spec_helper'

describe Clipping do
  describe "Associations" do
    it 'belongs to notebook' do
      Clipping.new.should respond_to(:notebook)
    end
    it 'can retrieve a notebook' do
      # clip = Factory(:notebook)
    end
  end
end
