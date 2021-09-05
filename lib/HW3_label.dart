import 'dart:io';
import 'dart:math';

void main() {
  print('╔═══════════════════════════════════════════════');
  print('║               GUESS THE NUMBER                ');
  print('╟───────────────────────────────────────────────');

  var maxRandom;
  do {
    stdout.write('║ Enter max number you want to guess: ');
    var input = stdin.readLineSync();
    maxRandom = int.tryParse(input!);
  } while (maxRandom == null);

  print('╟───────────────────────────────────────────────');
  var game = Game(maxRandom: maxRandom!);
  var isCorrect = false;
  do {
    stdout.write('║ Guess the number between 1 and $maxRandom : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      Map resultMap = game.doGuess(guess);
      isCorrect = resultMap['isCorrect'];
      var message = resultMap['text'];
      print('║ Guess➜ $guess : $message');
      print('╟───────────────────────────────────────────────');
    }
  } while (!isCorrect);

  print('║ Total guesses: ${game.getTotalGussese()} ');
  print('╟───────────────────────────────────────────────');
  print('║                   THE END                     ');
  print('╚═══════════════════════════════════════════════');
}

class Game {
  final int answer;
  final int maxRandom;
  int totalGussese = 0;
  static const List feedbackList = [
    {
      'text': 'TOO HIGH!',
      'isCorrect': false,
    },
    {
      'text': 'TOO LOW!',
      'isCorrect': false,
    },
    {
      'text': 'CORRECT!',
      'isCorrect': true,
    },
  ];

  int getTotalGussese() {
    return totalGussese;
  }

  Game({required this.maxRandom})
      : this.answer = Random().nextInt(maxRandom) + 1;

  Map doGuess(int num) {
    totalGussese++;
    if (num > this.answer) {
      return feedbackList[0];
    } else if (num < this.answer) {
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }
}
