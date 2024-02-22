import 'dart:io';
import "restaurantManagement.dart";

guestManagement() {
  print("can i have your name please");
  String name = stdin.readLineSync()!;
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
  print('please tell the type of room you wish to select');
  String? typeOfRoom = stdin.readLineSync()!;

  if (typeOfRoom == 'luxury') {
    var totalPriceLuxury = totalNight.abs() * prices['oneNightStayPriceLuxury'];
    print('total price for Luxury is $totalPriceLuxury');
  } else if (typeOfRoom == 'presidential') {
    var totalPricePresidentialSuit =
        totalNight.abs() * prices['oneNightStayPricePresidentialSuit'];
    print('total price for presidential suit is $totalPricePresidentialSuit');
  } else if (typeOfRoom == 'executive') {
    var totalPriceExecutive =
        totalNight.abs() * prices['oneNightStayPriceExecutive'];
    print('total price for executive is $totalPriceExecutive');
  } else {
    print('please enter correct type of room');
  }
  return '${totalNight.abs().toString()}, name of the guest: ${name}';
}
