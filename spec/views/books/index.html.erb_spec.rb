require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :library_id => 1,
        :books_id => "Books",
        :author => "Author",
        :name => "Name",
        :edition => "Edition"
      ),
      stub_model(Book,
        :library_id => 1,
        :books_id => "Books",
        :author => "Author",
        :name => "Name",
        :edition => "Edition"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Books".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Edition".to_s, :count => 2
  end
end
