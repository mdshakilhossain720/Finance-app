


import 'dart.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'upwork';
  upwork.fee = '650';
  upwork.time = 'today';
  upwork.image = 'Transfer.png';
  upwork.buy = false;
  money starbucks = money();
  starbucks.buy = true;
  starbucks.fee = '15';
  starbucks.image = 'Transfer.png';
  starbucks.name = 'starbucks';
  starbucks.time = 'today';
  money trasfer = money();
  trasfer.buy = true;
  trasfer.fee = '100';
  trasfer.image = 'Transfer.png';
  trasfer.name = 'trasfer for sam';
  trasfer.time = 'jan 30,2022';
  return [upwork, starbucks, trasfer, upwork, starbucks, trasfer];
}
