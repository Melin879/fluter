

class Product
{
  String _item;
  String _address;
  int _price;
  int _quantity;

  Product(this._item, this._address, this._price, this._quantity);

  int get quantity => _quantity;

  int get price => _price;

  String get address => _address;

  String get item => _item;

  set quantity(int value) {
    _quantity = value;
  }

  set price(int value) {
    _price = value;
  }

  set address(String value) {
    _address = value;
  }

  set item(String value) {
    _item = value;
  }


}
