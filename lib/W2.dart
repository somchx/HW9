import 'dart:io';
import 'dart:math';

void main() {
  const MAX_RANDOM = 100;

  Random r = new Random(); // var r =Random();
  var answer = r.nextInt(100) + 1; //random int type 1-100 normal 0-99
  var guess;

  do {
    //print('Guess the number between 1 to 100'); get String next line
    stdout.write(
        'Guess the number between 1 to 100: '); // not next line (in line)
    //stdout.write('Guess the number between 1 to $MAX_RANDOM : ');
    String? input = stdin.readLineSync(); //read data from keyboard
    //String must has ? cuz stdin. can be null
    if (input == null) {
      return;
    } //check input is null?
    guess = int.parse(input);
    //! meant input not null sure but checked null not put ! after input its can do
    if (answer == guess) {
      print('CORRECT!');
    } else {
      print('INCORRECT!');
      if (guess > answer) {
        print('TOO HIGH!');
      } else {
        print('TOO LOW!');
      }
      print(answer);
    }
  } while (guess != answer);
  print('-----THE END!-----');
}
/*
var myList = [1,1.23,'hello'];


List<String> myList = ['hello','ccc'];
myList.add('som'); //can do
myList.add(123); //cant do
print(myList[0]);

for(var i =0 ;i<myList.length;i++){
print(myList[i]);
} //can break

for(var item in myList){
print(item);
}//code for pro1 //cant

myList.forEach((item){
 print(item)
 });//code for pro2 //cant
 */
