using my.bookshop as BS from '../db/data-model';

service CatalogService {
  entity BookInfo {
    key ID : Integer;
    copiesSold: Integer;
  };
  
  
  entity Books @(
	title: 'Books',
	Capabilities: {
		InsertRestrictions: {Insertable: true},
		UpdateRestrictions: {Updatable: true},
		DeleteRestrictions: {Deletable: true}
	}
  ) as projection on BS.Books;
  
  entity BSVW @(
    title: 'bsvw',
    Capabilities: {
    	InsertRestrictions: { Insertable: false },
    	UpdateRestrictions: { Updatable: false },
    	DeleteRestrictions: { Deletable: false }
    }
  ) as projection on BS.BookSaleVw;
  
}
