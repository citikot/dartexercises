void main() {
  const pizzaPrices = {
    'marharita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 8.0,
  };

  const order = ['marharita', 'vegetarian'];
  var total = 0.0;

  for (var item in order) {
    var price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print('Pizza $item not found');
    }
  }

  print('Total: \$$total');
}
