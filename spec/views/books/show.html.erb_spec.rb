require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :library_id => 1,
      :books_id => "Books",
      :author => "Author",
      :name => "Name",
      :edition => "Edition"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Books/)
    rendered.should match(/Author/)
    rendered.should match(/Name/)
    rendered.should match(/Edition/)
  end
end
