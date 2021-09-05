import 'dart:io';
import 'dart:math';

void main() {
  print('╔═══════════════════════════════════════════════');
  print('║               GUESS THE NUMBER                ');
  print('╟───────────────────────────────────────────────');
  var num, Check = false;
  while (!Check) {
    stdout.write('║ Enter max number you want to guess: ');
    var maxRandom = stdin.readLineSync();
    num = int.tryParse(maxRandom!);
    if (num != null) {
      Check = !Check;
    }
  }

  var game = Game(maxRandom: num);
  var isCorrect = false;
  do {
    stdout.write('║ Guess the number between 1 and $num : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess != null) {
      Map resultMap = game.doGuess(guess);
      isCorrect = resultMap['isCorrect'];
      var message = '║ ➜ $guess : ' + resultMap['text'];
      print(message);
    }
  } while (!isCorrect);
  game.getTotalGuesses();
}

class Game {
  int num = 0;

  static const List feedbackList = [
    {
      'text': 'TOO HIGH! ▲ \n║───────────────────────────────────────────────',
      'isCorrect': false,
    },
    {
      'text': 'TOO LOW! ▼ \n║───────────────────────────────────────────────',
      'isCorrect': false,
    },
    {
      'text': 'CORRECT ❤ \n║───────────────────────────────────────────────',
      'isCorrect': true,
    },
  ];

  late int answer;

  Game({var maxRandom}) {
    this.answer = Random().nextInt(maxRandom) + 1;
  }

  int count = 0;

  Map doGuess(int num) {
    this.num = num;
    count++;
    if (num > this.answer) {
      return feedbackList[0];
    } else if (num < this.answer) {
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }

  void getTotalGuesses() {
    print('║ Total guesses: $count ');
    print('╟───────────────────────────────────────────────');
    print('║                   THE END                     ');
    print('╚═══════════════════════════════════════════════');
  }
}
