require 'library'
describe Library do #arrange
  it "can list the books" do
    library = Library.new
    expect (library.list_books).respond_to? :books

  end
  it "can add the books" do # act
    library = Library.new
    book = {title: 'Learn html', author: 'Matchino', subject: 'HTML'}
    library.add_book(book)
    expect(library.books.include?(book)).to eq true
  end
    it "can find the book by title" do
      library = Library.new
      title = "Learn Ruby The Hard Way"
      expect(library.find_book(title)).to eq ({title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'})
    end
      it "can remove the book by title" do
        library = Library.new
        title = "The Well Grounded Rubyist"
        expect(library.remove_book(title)).respond_to? :title
      end
      it "can separate the book by title" do
        library = Library.new
        subject = {subject: "OOP"}
        library.all_books_by_subject(subject)
        expect(library.all_books_by_subject(subject)).respond_to? :subject
      end
    end
