require 'spec_helper'

describe "notebooks/new.html.erb" do
  before(:each) do
    assign(:notebook, stub_model(Notebook,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new notebook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notebooks_path, :method => "post" do
      assert_select "input#notebook_name", :name => "notebook[name]"
    end
  end
end
