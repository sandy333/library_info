require 'spec_helper'

describe "library_infos/show" do
  before(:each) do
    @library_info = assign(:library_info, stub_model(LibraryInfo,
      :name => "Name",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
