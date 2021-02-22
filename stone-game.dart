import 'dart:io';
import 'dart:math';

enum Moves { stone, scissors, paper }

main() {
  final rnd = Random();
  var userMove;

  while (true) {
    // main cycle
    stdout.write('Enter your move (s/h/p/ q - for quit): ');
    final userInput = stdin.readLineSync();

    // check of the input
    if (userInput == 'q') {
      print('Game over!');
      break;
    } else if (userInput != 's' &&
        userInput != 'h' &&
        userInput != 'p' &&
        userInput != 'q') {
      print('Please, enter valid input');
      continue;
    }

    if (userInput == 's') {
      userMove = Moves.scissors;
    } else if (userInput == 'h') {
      userMove = Moves.stone;
    } else if (userInput == 'p') {
      userMove = Moves.paper;
    }

    final aiMove = Moves.values[rnd.nextInt(3)];

    print("Your move $userMove");
    print("AI move $aiMove");

    if (userMove == Moves.paper && aiMove == Moves.stone ||
        userMove == Moves.scissors && aiMove == Moves.paper ||
        userMove == Moves.stone && aiMove == Moves.scissors) {
      print("You win!");
    } else if (userMove == aiMove) {
      print("Draw!");
    } else {
      print("AI win!");
    }
  }
}
