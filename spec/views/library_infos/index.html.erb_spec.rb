require 'spec_helper'

describe "library_infos/index" do
  before(:each) do
    assign(:library_infos, [
      stub_model(LibraryInfo,
        :name => "Name",
        :address => "MyText"
      ),
      stub_model(LibraryInfo,
        :name => "Name",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of library_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
