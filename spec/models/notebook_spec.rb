require 'spec_helper'

describe Notebook do
  describe "Associations" do
    it "has many clippings" do
      Notebook.new.should respond_to(:clippings)
    end
  end
end
