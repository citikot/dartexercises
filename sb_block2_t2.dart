/*
Блок 2. Задача 2.

Есть массив супергероев. Напишите функцию findUser, которая принимает два параметра. 
Первый — массив с героями, второй — имя героя. 
Эта функция ищет по имени героя в списке и возвращает нам объект с героем, 
например {"name": "Batman", "age": 30}. 

Если такого имени в списке нет, функция должна вернуть {name: Anonimus, age: 0}.

 

Пример:

var hero = findUser(data, 'Iron man');

print(hero); 
*/

Map findUser(List<Map<String, dynamic>> data, String name) {
  Map<String, dynamic> output = {'name': 'Anonimus', 'age': 0};

  for (Map item in data) {
    if (item.containsValue(name)) {
      output = item;
      break;
    }
  }
  return output;
}

void main() {
  List<Map<String, dynamic>> data = [
    {"name": "Batman", "age": 30},
    {"name": "Spiderman", "age": 18},
    {"name": "Kung fury", "age": 23},
    {"name": "Tor", "age": 550},
    {"name": "Halk", "age": 44},
    {"name": "Iron man", "age": 35},
  ];

  var hero = findUser(data, "Iron Man");
  print(hero);
}
