import "dart:io";
import "guestManagement.dart";

roomManagement({required int totalRooms}) {
  print('enter number of rooms occupied');
  int occupiedRooms = int.parse(stdin.readLineSync()!);
  var emptyRooms = totalRooms - occupiedRooms;
  print('there are $emptyRooms no of emptyrooms');
  print("please tell type of room you wish to select");
  String? typeOfRoom = stdin.readLineSync()!;
  if (typeOfRoom == "executive" && emptyRooms > 0) {
    print("accomodation of $typeOfRoom is 200 dollars");
  } else if (typeOfRoom == "executive" && emptyRooms == 0) {
    print("$typeOfRoom are all occupied please choose another type of room");
  } else if (typeOfRoom == 'presidential suit' && emptyRooms == 0) {
    print(
        '$typeOfRoom rooms are all occupied please choose another type of room');
  } else if (typeOfRoom == 'presidential suit' && emptyRooms > 0) {
    print("accomodation of $typeOfRoom is 600 dollars");
  } else if (typeOfRoom == "luxury" && emptyRooms > 0)
    print("accomodation of $typeOfRoom is 400 dollars");
  else if (typeOfRoom == "luxury" && emptyRooms == 0) {
    print(
        '$typeOfRoom rooms are all occupied please choose another type of room');
  } else {
    print(
        "all types of rooms are booked at the moment please come again later");
  }
  return (typeOfRoom, guestManagement()).toString();
}
