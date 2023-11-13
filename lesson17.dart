// import 'dart:io';

import 'dart:io';

void main(List<String> args) {
  List<int> array = [8, 1, 2, 3, 4, 5, 6, 7, 0, 9, 10];
  List<String> myArray = ['Erlan', 'Dastan', 'ITC', 'Lesson17', 'Ad'];
  task1(array);
  task2(array);
  task3(array);
  task4(myArray);
  task5(myArray);
  task6(myArray);
  task7(array);
  int result = task8(array);
  print('Сумма первых N элементов до первого нуля: $result');
  task2_1();
  task2_2();
  task2_3();
  task2_4();
  task2_5();
  task2_6();



}

// Задачи
// 1) Создать массив. Заполнить его от 0 до 10. Вывести на экран каждый
// элемент этого массива.
task1(List array) {
  array.forEach((element) {
    print(element);
  });
}

// 2) Создать массив. Заполнить его от 0 до 10. Вывести на экран каждый
// элемент в кубе.
task2(List array) {
  array.forEach((element) {
    element = element * element * element;
    print(element);
  });
}

// 3) Создать массив. Заполнить его от 0 до 10. Сложить все элементы массива
task3(List<int> array) {
  int result = array.reduce((a, element) {
    return a + element;
  });
  print(result);
}

// 4) Создать массив из слов, Упорядочить все элементы по алфавиту в
// порядке возрастания.
task4(List<String> myArray) {
  myArray.sort();
  print(myArray);
}

// 5) Создать массив из слов, Упорядочить все элементы по алфавиту в
// порядке убывания.
task5(List<String> myArray) {
  myArray.sort((a, b) => b.compareTo(a));
  print(myArray);
}

// 6) Создать массив из слов, Упорядочить все элементы по длинне в порядке
// возрастания.
task6(List<String> myArray) {
  myArray.sort((a, b) => a.length.compareTo(b.length));
  print(myArray);
}

// 7) Дан массив с числами. Оставьте в нем только четные числа
task7(List<int> array) {
  var result = array.where((e) {
    return e % 2 == 0;
  });
  print(result.toList());
}

// 8) Дан массив с числами. Найдите сумму первых N элементов до
// первого нуля. Пример: [1, 2, 3, 0, 4, 5, 6] - суммируем первые 3
// элемента, так как дальше стоит элемент с числом 0.

int task8(List<int> array) {
  int sum = 0;
  bool foundZero = false;
  array.forEach((element) {
    if (foundZero || element == 0) {
      foundZero = true;  // Устанавливаем флаг, что мы нашли 0
      return;
    }
    sum += element;
  });

  return sum;
}

                                // Практика
// Через for
// 1) Необходимо вывести на экран числа от 1 до 5. На экране должно быть:
// 1 2 3 4 5
task2_1(){
  for (int i = 1; i < 6; i++) {
    print(i);
  }
}
// Через for
// 2)Необходимо вывести на экран числа от 5 до 1. На экране должно быть:
// 5 4 3 2 1
task2_2(){
  for (int i = 5; i > 0; i--) {
    print(i);
  }
}
// Через for
// 3) Необходимо вывести на экран таблицу умножения на 3:
// 3*1=3
// 3*2=6
// 3*3=9
// 3*4=12
// 3*5=15
// 3*6=18
// 3*7=21
// 3*8=24
// 3*9=27
// 3*10=30
task2_3(){
   for (int i = 1; i <= 10; i++) {
    stdout.write("3*$i=${3 * i}\n");
  }
}
// через for
// 4) Найти сумму чисел от 100 до 200 кратных 17.
task2_4(){
for (int i = 100; i <= 200; i++) {
  if (i % 17 == 0) {
    print(i);
  }
}
}
// Через while
// 5) Необходимо, чтоб программа выводила на экран вот такую
// последовательность:
// 7 14 21 28 35 42 49 56 63 70 77 84 91 98
task2_5(){
  int i = 0;
  while (i<100) {
    i++;
    if (i % 7 == 0) {
    print(i);
  }
  }
}
// Через while
// 6)Необходимо вывести на консоль такую последовательность чисел:
// 1 2 4 8 16 32 64 128 256 512
task2_6(){
  int i = 1;
  while (i<513) {
    print(i);
    i=i*2;
  }
}



















// void main(List<String> args) {
//   List<int> myList = [10, 8, 98, 4, 5];
//   List<String> testLiist = ['ada', 'dad', 'da'];

//   bool result3 = myList.every((element) => element > 4);
//   print(result3);

//   bool result4 = myList.any((element) => element > 5);
//   print(result4);

//   myList.sort();
//   print(myList);
  
// //   for (var i = 0; i < myList.length; i++) {
// //     print(myList[i]);

// // myList.forEach((element) {
// //   if(element>2){
// //     print(element);
// //   }
// // });

// // myList.forEach((element) => print(element));

// // var result = myList.map((e) => e*e).toList();
// // print(result);

//   // var result2 = myList.where((element) => element % 2 == 0).toList();
//   // print(result2);

//   // List<String> names = ['dastan', 'dosya', 'kutya', 'adyl'];

//   // List sortNames = names.where((element) => element.length > 4).toList();
//   // print(sortNames);

//   // names.where((element) => element.length > 3);

//   // names.forEach((element) {
//   //   if (element.length > 5) {
//   //     print(element);
//   //   }
//   // });

//   // int total = myList.reduce((prev, next) => prev + next); //только интовые просто суммирует
//   // print(total);
// }
