using my.bookstore as my from '../db/data-model';

service CatalogService {
  @readonly
  entity Products as projection on my.Products;
  
  annotate Products with @(
    UI: {
      SelectionFields: [name],
      LineItem: [
        {Value: name},
        {Value: price},
        {Value: stock}
      ],
      Identification: [
        {Value: name}
      ]
    }
  );
}