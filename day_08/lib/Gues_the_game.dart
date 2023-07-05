import'dart:io';
import'dart:math';

int main(){
  final Random random = Random();
  final int randomNumber = random.nextInt(100)+1;
  int attempts =0;
  int guess =0;
  print('Welcome to Guess the Number!')
  print('i have chosen a number between 1 and 100')
  print('Can you guess the number?')
  while(guess != randomNumber){
    stdout.write('Enter your guess:');
    String? Gues_the_game=Gues_the_game.readLineSync();
    print(input);
  }
}