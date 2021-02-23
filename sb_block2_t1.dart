/* 
Блок 2. Задача 1.
Есть массив юзеров. Создайте из него новый массив так, чтобы имена начинались 
с большой буквы, а остальные символы были в нижнем регистре. 
Например, Anna, Viktor и так далее.
*/

void main() {
 
String capitalize (String s) => s[0].toUpperCase() + s.substring(1);

List<String> users = ['anna', 'viKtor', 'Mike', 'aleX', 'dan'];
List<String> output = [];

for (String name in users) {
  output.add(capitalize((name.toLowerCase())));
}

print(output);

}
