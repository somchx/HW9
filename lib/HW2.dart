import 'dart:io';
import 'dart:math';

void main() {
  Random r = new Random();
  var answer = r.nextInt(100) + 1;
  var guess, count = 0;
  print(answer);
  print('╔═════════════════════════════════════════════════');
  print('║\t \t \t \t GUESS THE NUMBER');
  print('║─────────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and 100: ');
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!);

    if (guess == null) {
    } else {
      count++;
      if (answer == guess) {
        print('║ ➜ $guess is CORRECT ❤ ,total guesses: $count');
      } else if (guess > answer) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('║─────────────────────────────────────────────────');
      } else {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('║─────────────────────────────────────────────────');
      }
    }
  } while (guess != answer);
  print('║─────────────────────────────────────────────────');
  print('║\t \t \t \t \t THE END');
  print('╚═════════════════════════════════════════════════');
}
