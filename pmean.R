```
read_files <- function(directory, id=1:332) {
  files <- list.files(directory, full.names=T)[id]
  data_list <- lapply(files, read.csv) 
  return (data_list)
}
```
Написати функцію pmean, яка обчислює середнє значення (mean)
забруднення сульфатами або нітратами серед заданого переліка
моніторів. Ця функція приймає три аргументи: «directory», «pollutant»,
«id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення,
id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332.
Функція повинна ігнорувати NA значення.
```
pmean <- function(directory, pollutant, id=1:332) {
  data <- read_files(directory, id)
  data_p <- do.call(rbind, data)
  result <- mean(data_p[,pollutant], na.rm = TRUE)
  return (result)
}
```
Написати функцію complete, яка виводить кількість повних спостережень (the number of completely observed cases) для кожного файлу. Функція приймає два аргументи: «Directory» та «id» та повертає data frame, в якому перший стовпчик – ім’я файлу, а другий – кількість повних спостережень.
```
complete <- function(directory, id) {
  data_list <- read_files(directory, id)
  number <- sapply(data_list, function(x) { sum(complete.cases(x)) })
  result <- data.frame(id, number)
  return (result)
}
```
