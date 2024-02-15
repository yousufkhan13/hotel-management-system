import 'dart:io';

guestManagement() {
  print("Please enter check-in date");
  int StartedToStay = int.parse(stdin.readLineSync()!);
  print("Please enter check-out date");
  int CheckOut = int.parse(stdin.readLineSync()!);
  int totalNight = StartedToStay - CheckOut;
  print('total number of night stayed is ${totalNight.abs()}');
  Map prices = {
    'oneNightStayPriceLuxury': 400,
    'oneNightStayPricePresidentialSuit': 600,
    'oneNightStayPriceExecutive': 200,
  };
  var totalPriceLuxury = totalNight * prices['oneNightStayPriceLuxury'];
  var totalPriceExecutive = totalNight * prices['oneNightStayPriceExecutive'];
  var totalPricePresidentialSuit =
      totalNight * prices['oneNightStayPricePresidentialSuit'];
  print('total price for Luxury is $totalPriceLuxury');
  print('total price for presidentialSuit is $totalPricePresidentialSuit');
  print('total price for executive is $totalPriceExecutive');
  return totalNight.toString();
}
