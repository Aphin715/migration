# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book_attributes = [
  {
    title: 'Grapes of Wrath',
    author: 'Hemmingway',
    rating: 5
  },
  {
    title: 'game of thrones',
    author: 'Hemmingway',
    rating: 5
  },
  {
    title: 'boo ya baby',
    author: 'Hemmingway',
    rating: 5
  }
]




book_attributes.each do |page|


  Book.find_or_create_by_title_and_author(title: page[:title],author: page[:author]) do |book|
    book.rating = page[:rating]
  end
end

cats = ['science fiction', 'horror', 'ficton', 'non-fiction']

  cats.each do |cat|
    Category.find_or_create_by_name(cat)
end



# book = Book.where(title: title).first?

# if book.nil?
#   Book.create(book_attributes)
# end
