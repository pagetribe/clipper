require 'spec_helper'

describe "notebooks/index.html.erb" do
  before(:each) do
    assign(:notebooks, [
      stub_model(Notebook,
        :name => "Name"
      ),
      stub_model(Notebook,
        :name => "Name"
      )
    ])
  end

  it "renders a list of notebooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
