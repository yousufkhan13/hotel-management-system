import 'dart:io';
import 'roomManagement.dart';

void main() {
  // Read data from a file
  File file = File('data.txt');
  if (file.existsSync()) {
    String savedData = file.readAsStringSync();
    print('Data loaded from file: $savedData');
  }
  // Get new data from the user
  print('Enter new data:');
  String newData = roomManagement(
      totalRoomsExecutive: 20,
      totalRoomsLuxury: 20,
      totalRoomsPresidential: 20);

  // Save data to the file
  file.writeAsStringSync(newData);
  print('Data saved to file.');
}
