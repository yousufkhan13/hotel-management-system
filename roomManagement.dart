import "dart:io";

roomManagement({required int totalRooms}) {
  print('enter number of rooms occupied');
  int occupiedRooms = int.parse(stdin.readLineSync()!);
  dynamic emptyRooms = totalRooms - occupiedRooms;
  print('there are $emptyRooms no of emptyrooms');

  print("please enter type of room you wish to select");
  var typeOfRoom = stdin.readLineSync();

  if (typeOfRoom == "executive") {
    print("accomodation of executive room is 200 dollars");
  } else if (typeOfRoom == "luxury") {
    print("accomodation of executive room is 400 dollars");
  } else if (typeOfRoom == 'presidential suit') {
    print('accomodation of presidential suit for one night is 600 dollars');
  } else {
    print("please choose correct type of Room for accomodation");
  }
  return typeOfRoom;
}
