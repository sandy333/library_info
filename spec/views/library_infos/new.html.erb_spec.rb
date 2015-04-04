require 'spec_helper'

describe "library_infos/new" do
  before(:each) do
    assign(:library_info, stub_model(LibraryInfo,
      :name => "MyString",
      :address => "MyText"
    ).as_new_record)
  end

  it "renders new library_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => library_infos_path, :method => "post" do
      assert_select "input#library_info_name", :name => "library_info[name]"
      assert_select "textarea#library_info_address", :name => "library_info[address]"
    end
  end
end
