namespace my.bookshop;

using { cuid, managed} from '@sap/cds/common';


entity Books {
    key ID    : Integer;
        title : String;
        stock : Integer;
        authors : Association to Authors; 
}

entity Authors {
    key ID   : Integer;
        name : String;
        books : Association to many Books on books.authors = $self;
}

entity Orders : cuid, managed {
    book : Association to Books;
    quantity: Integer;
}
