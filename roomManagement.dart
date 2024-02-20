import "dart:io";
import "guestManagement.dart";

roomManagement(
    {required int totalRoomsExecutive,
    required int totalRoomsLuxury,
    required int totalRoomsPresidential}) {
  print('Please enter type of room you wish to select');
  String? typeOfRoom = stdin.readLineSync()!;
  if (typeOfRoom == 'executive') {
    print('enter number of executive rooms occupied less than or equals to 20');
    int occupiedRoomsexecutive = int.parse(stdin.readLineSync()!);
    num emptyRoomsExecutive = totalRoomsExecutive - occupiedRoomsexecutive;
    print('there are $emptyRoomsExecutive no of executive rooms empty');
  } else if (typeOfRoom == 'presidential') {
    print(
        'enter number of presidential rooms occupied less than or equals to 20');
    int occupiedRoomspresidential = int.parse(stdin.readLineSync()!);
    num emptyRoomspresidential =
        totalRoomsPresidential - occupiedRoomspresidential;
    print('there are $emptyRoomspresidential no of presidential rooms empty');
  } else if (typeOfRoom == "luxury") {
    print('enter number of luxury rooms occupied less than or equals to 20');
    int occupiedRoomsluxury = int.parse(stdin.readLineSync()!);
    num emptyRoomsluxury = totalRoomsLuxury - occupiedRoomsluxury;
    print('there are $emptyRoomsluxury no of luxury rooms empty');
  } else {
    print("please select the correct type of room");
  }
  return ('type of Room selected:${typeOfRoom}, total nights stayed: ${guestManagement()}')
      .toString();
}
