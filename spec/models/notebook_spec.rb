require 'spec_helper'

describe Notebook do
  describe "Associations" do
    it "has many clippings" do
      Notebook.new.should respond_to(:clippings)
    end
    it "can retrieve clippings" do
      n = Factory(:notebook)
      n.clippings.count.should_not eq 0 
    end
  end
end
