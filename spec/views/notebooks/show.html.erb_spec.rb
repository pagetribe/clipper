require 'spec_helper'

describe "notebooks/show.html.erb" do
  before(:each) do
    @notebook = assign(:notebook, stub_model(Notebook,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
