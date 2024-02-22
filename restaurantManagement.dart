import 'dart:io';
import 'roomManagement.dart';

restaurantManagement() {
  print('would you like to have meal from the list below');
  print('1-steak');
  print('2-pasta');
  print('3-continental');
  print('4-BBQ platter');
  print('5-Rice');
  String? meal = stdin.readLineSync();
  print('would you like to have any drinks from the list below');
  print('1-sprite');
  print('2-coke');
  print('3-mirinda');
  String? drinks = stdin.readLineSync();
  if (meal == 'steak' && drinks == "sprite") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'steak' && drinks == "coke") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'steak' && drinks == "mirinda") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'pasta' && drinks == "sprite") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'pasta' && drinks == "coke") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'pasta' && drinks == "mirinda") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'continental' && drinks == "sprite") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'continental' && drinks == "coke") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'continental' && drinks == "mirinda") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'BBQ platter' && drinks == "sprite") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'BBQ platter' && drinks == "coke") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'BBQ platter' && drinks == "mirinda") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'Rice' && drinks == "sprite") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'Rice' && drinks == "coke") {
    print('Please wait you will be served within 10 minutes');
  } else if (meal == 'Rice' && drinks == "mirinda") {
    print('Please wait you will be served within 10 minutes');
  }
  return 'name of meal:${meal}';
}
