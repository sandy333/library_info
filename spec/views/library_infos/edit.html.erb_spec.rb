require 'spec_helper'

describe "library_infos/edit" do
  before(:each) do
    @library_info = assign(:library_info, stub_model(LibraryInfo,
      :name => "MyString",
      :address => "MyText"
    ))
  end

  it "renders the edit library_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => library_infos_path(@library_info), :method => "post" do
      assert_select "input#library_info_name", :name => "library_info[name]"
      assert_select "textarea#library_info_address", :name => "library_info[address]"
    end
  end
end
