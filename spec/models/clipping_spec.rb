require 'spec_helper'

describe Clipping do
    
  before(:each) do
    @nb = Factory(:notebook)
  end

  describe "notebook associations" do
  
    before(:each) do
      @clipping = @nb.clippings.create()
    end
    
    it "should have a notebook attribute" do
      @clipping.should respond_to(:notebook)
    end
    
    it "should have the right associated notebook" do
      @clipping.notebook_id.should == @nb.id
      @clipping.notebook.should == @nb
    end
    
    
    # it 'belongs to notebook' do
    #   Clipping.new.should respond_to(:notebook)
    # end
    # it 'can retrieve a notebook' do
    #   c = Factory(:clipping)
    #   c.notebook.should be_kind_of(Notebook)
    # end
  end
end
