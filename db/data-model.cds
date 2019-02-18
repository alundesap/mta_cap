namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
};

entity BookSale {
  key ID : Integer;
  book : Association to Books;
  copiesSold : Integer;
  purchaseDate : Date;
};

define view BookSaleVw as select from BookSale {
    ID,
    copiesSold,
    purchaseDate,
    book.title,
    book.stock
};
