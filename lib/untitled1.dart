import 'dart:io';

void main() {
  movies();
  //animals();
  //EvenOdd();
  //chooseChar();
  //splitWords();
  //removeSign();
  //tenWord();
  //endOfList();
}

void movies() {
  List<String> movies = [
    "Snow White and the Seven Dwarfs",
    "A Pinocchio",
    "a Elemental",
    "Luca",
    "Moana",
    "Soul",
    "artemis Fowl ",
    "African Cats",
  ];

  movies.where((e) => e.startsWith("A") || e.startsWith("a"))
      .forEach((element) => print(element));
}

void animals() {
  List<String> animals = [
    "Cat",
    "Dogs",
    "Rabbit",
    "Lion",
    "Monkey",
  ];
  animals.forEach((element) {
    print(element);
  });
}

void EvenOdd() {
  print("Enter number to check if even or odd");
  int? num = int.tryParse(stdin.readLineSync()!);

  num!.isEven ? print("$num is Even") : print("$num is odd");
}

void chooseChar() {
  List<String> word = ["eat", "run", "sleep", "walk", "flay"];

  word.where((e) => e.contains("a") || e.contains("k"))
      .forEach((element) => print(element));
}

void splitWords() {
  print('Enter sentences:');
  List<String> sentences = stdin.readLineSync()!.split(",");
  print('Sentences: $sentences');
}

void removeSign() {
  String sentence = "Your^ sentenc= here!";
  String newSentence = sentence.replaceAll(RegExp(r'[^\w\s]+'), '');

  print(sentence);
  print(newSentence);
}

void tenWord() {

  List<String> words = [];
  for (int i = 0; i < 10; i++) {
    stdout.write('Enter word ${i + 1}: ');
    words.add(stdin.readLineSync()!);
  }
  String allWords = words.join(' ');
  print('All words: $allWords ');
}

void endOfList(){

  List<String> names = [];
  String input;
  while (true) {
    stdout.write('Enter word: ');

    input = stdin.readLineSync()!;
    if (input == 'end' || input == 'close') {
      break;
    }
    names.add(input);
  }
  print(names);
}