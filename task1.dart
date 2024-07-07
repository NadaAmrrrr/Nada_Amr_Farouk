class Book {
  String title;
  String author;
  int pages;


  Book(this.title, this.author, this.pages);

  
  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
  }
}


