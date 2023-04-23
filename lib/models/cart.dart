import 'package:project/models/catalogue.dart';

class CartModel {
  static final cartmodel = CartModel.internal();

  CartModel.internal();
  factory CartModel() => cartmodel;
  //catalog field
  late CatalogueModel _catalog;
//collection of ids - store ids of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogueModel get catalog => _catalog;

  set catalog(CatalogueModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
