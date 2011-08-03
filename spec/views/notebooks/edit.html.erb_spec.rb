require 'spec_helper'

describe "notebooks/edit.html.erb" do
  before(:each) do
    @notebook = assign(:notebook, stub_model(Notebook,
      :name => "MyString"
    ))
  end

  it "renders the edit notebook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notebooks_path(@notebook), :method => "post" do
      assert_select "input#notebook_name", :name => "notebook[name]"
    end
  end
end
