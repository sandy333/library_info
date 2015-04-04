class LibraryInfo < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :books
end
