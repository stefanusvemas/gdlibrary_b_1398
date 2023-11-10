import 'package:gdlibrary_b_1398/invoice/model/product.dart';

String getSubTotal(List<Product> products) {
  return products
      .fold(0.0,
          (double prev, element) => prev + (element.price * element.amount))
      .toStringAsFixed(2);
}

String getPPNTotal(List<Product> products) {
  return products
      .fold(
        0.0,
        (double prev, next) =>
            prev + ((next.price / 100 * next.ppnInPercent) * next.amount),
      )
      .toStringAsFixed(2);
}
