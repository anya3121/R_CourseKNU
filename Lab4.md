Задвання 1. Функція add2(x, y), яка повертає суму двох чисел.
``` R
add2<- function(x,y) x+y
ptint(add2(6,4))
```
```R
[1] 10
```
Завдання 2. . Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.
```R 
above <- function(x,n)x[x>n]
x<-c(1:15)
print(above(x,10))
```
```R 
[1] 11 12 13 14 15
```
Завдання 3.Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, 
та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. 
Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
```R
> my_ifelse <- function(x, exp, n) {
+ if (exp == '>') x [x>n]
+ else if (exp == '>=') x[x>=n]
+ else if (exp == '==') x[x==n]
+ else if (exp == '<=') x[x<=n]
+ else if (exp == '<') x[x<n]
+ else x}
> x<-c(1:20)
> print(my_ifelse(x,'<=', 6))
```
```R 
[1] 1 2 3 4 5 6
```
 Завдання 4.  Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. 
Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
columnmean<- function(x,removeNA) 