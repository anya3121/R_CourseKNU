```
data <- read.csv("C:/Users/Admin/Downloads/olympics.csv", skip = 1,header = TRUE, encoding='UTF-8',stringsAsFactors = FALSE)
```
Напишіть функцію prepare_set <- function(file_name) {} яка в якості аргументу приймає ім’я файлу і повертає дата фрейм. Збережіть цей дата фрейм в змінну
olympics olympics <- prepare_set(“olympics.csv”)
Функція prepare_set повинна виконувати наступні дії:
1. Зчитати файл
read.csv("olympics.csv", skip = 1, header = TRUE, encoding="UTF-8",
stringsAsFactors = FALSE)
2. Першому стовпцю дати назву “Country”
3. Автоматично в циклі згенерувати назви останніх стовпців за наступними
правилами:
3.1. Видалити з назви “X.U.2116..”, тобто “X.U.2116..Summer” буде
“Summer”
3.2. “X01..” замінити на “Gold”, тобто “ X01...1” буде “Gold.1”
3.3. “X02..” та “X03..” замінити на “Silver” та “Bronze” відповідно
В результаті повинні бути наступні назви стовпців: "Country", "Summer",
"Gold", "Silver", "Bronze", "Total", "Winter", "Gold.1", "Silver.1", "Bronze.1",
"Total.1", "Games", "Gold.2", "Silver.2", "Bronze.2", "Combined.total"
4. Необхідно привести назви країн до виду "Afghanistan", "Algeria" і т.п. Для
цього можна використати функцію str_split бібліотеки stringr. В назві країн
не повинно бути пробілів на початку та в кінці.
5. Додайте до дата фрейму новий стовпець “ID”, в який запишіть трибуквений
код країна. Наприклад, "AFG", "ALG" і т.п.
6. Видаліть з дата фрейму останню строку “Totals”
```

