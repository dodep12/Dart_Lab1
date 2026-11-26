// void main() {
//     String name = 'Никита';
//   int age = 18;
//   double height = 1.77;
//   bool isStudent = true;
//   print(name);
//   print(age);
//   print(height);
//   print(isStudent);
//     print('\n2.2 ');
//   print('Привет, $name! Тебе $age лет.');
//   print('Через 5 лет тебе будет ${age + 5} лет.');
//   print('Рост: ${height} м, студент: $isStudent');
//     print('\n2.3, 2.4, 2.5 ');
//   var score = 95;
//   var language = 'Dart';
//   print('$language: $score');
  
//   const String appName = 'Lab1';
//   final int startYear = 2026;
//   print('$appName started in $startYear');
//     print('\n2.6 Null Safety');
//   String? city = null;
//   if (city != null) {
//     print(city.toUpperCase());
//   }
//   print(city?.toUpperCase());
  
//   String? nickname = null;
//   String display = nickname ?? 'Аноним';
//   print(display);
//     print('\n2.7 Коллекции ');
 
//   List<String> fruits = ['яблоко', 'банан', 'груша'];
//   fruits.add('апельсин');
//   print(fruits[0]);
//   print(fruits.length);
  
//   Map<String, dynamic> person = {'name': 'Никита', 'age': 18};
//   print(person['name']);
//   person['city'] = 'Волжский';
  
//   Set<int> ids = {1, 2, 3, 2, 1};
//   print(ids);
//   print(ids.length);
  
//   List<String> fruits2 = ['яблоко', 'банан', 'груша'];
//   for (var fruit in fruits2) {
//     print(fruit);
//       print('\n3.1 и 3.2 Функции');
//   print(greet('Никита'));
//   print(greet('Мария'));
//   print(greetShort('Никита'));
//   print(square(5));
//   print(half(10));
//     print('\n3.3 и 3.4');
//   describePet(name: 'Барсик', age: 3);
//   describePet(name: 'Шарик', species: 'пёс');
//   print(repeat('xa')); 
//   print(repeat('xa', 3));
//     print('\n3.5 Анонимные функции');
//   List<int> numbers = [3, 1, 4, 1, 5, 9];
//   numbers.sort((a, b) => b - a); 
//   print(numbers);
  
//   List<String> names = ['Никита', 'Мария', 'Иван'];
//   List<String> upper = names.map((name) => name.toUpperCase()).toList();
//   print(upper);
  
//   List<String> longNames = names.where((name) => name.length > 4).toList();
//   print(longNames);
//     print('\n4.1 Условия');
//   int score2 = 85;
//   String grade;
//   if (score2 >= 90) {
//     grade = 'A';
//   } else if (score2 >= 75) {
//     grade = 'B';
//   } else {
//     grade = 'C';
//   }
//   print(grade);
//   String result = score2 >= 60 ? 'Сдал' : 'Не сдал';
//   print(result);

//   print('\n4.2 Циклы');
//   for (int i = 0; i < 5; i++) {
//     print('For: $i');
//   }
//   int n = 0;
//   while (n < 3) {
//     print('While: $n');
//     n++;
//   }

//   print('\n4.3 Switch');
//   int day = 3;
//   switch (day) {
//     case 1:
//       print('Понедельник');
//       break;
//     case 2:
//       print('Вторник');
//       break;
//     case 3:
//       print('Среда');
//       break;
//     default:
//       print('Другой день');
//   }
//   }
// }
// String greet(String name) {
//   return 'Привет, $name!';
// }

// String greetShort(String name) => 'Привет, $name!';
// int square(int x) => x * x;
// double half(double x) => x / 2;
// void describePet({required String name, String species = 'кот', int age = 0}) {
//   print('$name - $species, возраст $age');
// }

// String repeat(String text, [int times = 2]) {
//   String result = '';
//   for (int i = 0; i < times; i++) {
//     result += text;
//   }
//   return result;
// }

double average(List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

int maxGrade(List<int> grades) {
  if (grades.isEmpty) return 0;
  int max = grades[0];
  for (var grade in grades) {
    if (grade > max) {
      max = grade;
    }
  }
  return max;
}

int minGrade(List<int> grades) {
  if (grades.isEmpty) return 0;
  int min = grades[0];
  for (var grade in grades) {
    if (grade < min) {
      min = grade;
    }
  }
  return min;
}

void main() {
  List<int> grades = [5, 4, 3, 5, 2, 4, 5];

  print(' Анализатор оценок');
  print('Список оценок: $grades');
  print('Средний балл: ${average(grades)}');
  print('Максимальная оценка: ${maxGrade(grades)}');
  print('Минимальная оценка: ${minGrade(grades)}');

  double avg = average(grades);
  if (avg >= 4.5) {
    print('Вы отличник!');
  } else if (avg >= 3.5) {
    print('Вы хорошист!');
  } else {
    print('Нужно подтянуть учебу.');
  }
}