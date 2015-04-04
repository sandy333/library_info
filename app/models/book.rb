class Book < ActiveRecord::Base
  attr_accessible :author, :books_id, :edition, :library_info_id, :name, :price

  belongs_to :library_info
  before_save :some
  def some
  	self.price = 20
  end
end
