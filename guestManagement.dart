import 'dart:io';

guestManagement() {
  print("Please enter check-in date");
  int checkInDate = int.parse(stdin.readLineSync()!);
  print("Please enter check-out date");
  int checkOutDate = int.parse(stdin.readLineSync()!);
  int totalNight = checkInDate - checkOutDate;
  print('total number of night stayed is ${totalNight.abs()}');
  Map prices = {
    'oneNightStayPriceLuxury': 400,
    'oneNightStayPricePresidentialSuit': 600,
    'oneNightStayPriceExecutive': 200,
  };
  var totalPriceLuxury = totalNight.abs() * prices['oneNightStayPriceLuxury'];
  var totalPriceExecutive =
      totalNight.abs() * prices['oneNightStayPriceExecutive'];
  var totalPricePresidentialSuit =
      totalNight.abs() * prices['oneNightStayPricePresidentialSuit'];
  print('total price for Luxury is $totalPriceLuxury');
  print('total price for presidentialSuit is $totalPricePresidentialSuit');
  print('total price for executive is $totalPriceExecutive');
  return (totalNight.abs()).toString();
}
