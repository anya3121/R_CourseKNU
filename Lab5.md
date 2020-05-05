```
read_files <- function(directory, id=1:332) {
  files <- list.files(directory, full.names=T)[id]
  data_list <- lapply(files, read.csv) 
  return (data_list)
}
```
```
pmean <- function(directory, pollutant, id=1:332) {
  data <- read_files(directory, id)
  data_p <- do.call(rbind, data)
  result <- mean(data_p[,pollutant], na.rm = TRUE)
  return (result)
}
```
Результати роботи функції:
```
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
Результати роботи функції:
```
```
Написати функцію corr, яка приймає два аргументи: directory (папка, де знаходяться файли спостережень) та threshold (порогове значення, за замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та нітратами для моніторів, кількість повних спостережень для яких більше порогового значення. Функція повинна повернути вектор значень кореляцій. Якщо ні один монітор не перевищує порогового значення, функція повинна повернути numeric вектор довжиною 0. Для обчислення кореляції між сульфатами та нітратами використовуйте вбудовану функцію «cor» з параметрами за замовчуванням.
```
corr <- function(directory, threshold = 0) {
  data_list <- read_files(directory)
  data_list <- lapply(data_list, function(x) { x[complete.cases(x),] })
  filtered_list <- Filter(function(x) { nrow(x) > threshold }, data_list)
  if (length(filtered_list) == 0) {
    return (c())
  }
  cors <- sapply(filtered_list, function(x) { cor(x[,'sulfate'], x[,'nitrate']) })
  return (cors)
  {
```
Результати роботи функції
```
