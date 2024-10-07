class LayawayPricingCalculator {
  /// -- Calculate price base on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = taxRate + taxAmount + shippingCost;

    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(location) {
    // lookup for tax rate for a given location from a tax rate database or API
    // return the tax rate
    return 0.075; // Example tax rate of 7.5%
  }

  static double getShippingCost(location) {
    // lookup for shipping cost for a given location using a shipping rate API
    // return the shipping cost
    return 1000.00; // Example shipping cost of ₦1000
  }

  /// -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //  return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0) );
  //}
}
