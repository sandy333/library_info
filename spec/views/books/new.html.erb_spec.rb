require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :library_id => 1,
      :books_id => "MyString",
      :author => "MyString",
      :name => "MyString",
      :edition => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_library_id", :name => "book[library_id]"
      assert_select "input#book_books_id", :name => "book[books_id]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_name", :name => "book[name]"
      assert_select "input#book_edition", :name => "book[edition]"
    end
  end
end
