Завдання 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```R
##character
a<-'Kiev' 
print(class(a))
```
```R
[1] "character"
```
```R
## numeric
b<- 5.3 
print(class(b))
```
```R
[1] "numeric"
```
```R
## integer
c<- 123L 
print(class(c))
```
```R
[1] "integer"
```
```R
## complex
d<-5+2i
print(class(d))
```
```R
[1] "complex"
```
```R
## logical
e<- TRUE 
print(class(e))
```
```R
[1] "logical"
```
Завдання 2.Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
```R
a<-c(5:75)
print(a)
```
```R
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
[26] 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
[51] 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75
```
```R
b<-c(3.14, 2.71, 0, 13)
print(b)
```
```R
[1]  3.14  2.71  0.00 13.00
```
```R
c<-c(rep(TRUE,100))
print(c)
```
```R
[1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [31] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [46] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [61] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [76] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [91] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 ```
Завдання 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind
або rbind
```R
> x<-c(0.5, 3.9, 0,2)
> y<-c(1.3,133,2.2,7)
> z<-c(3.5,2.8,4.6,5.1)
> cbind(x,y,z)
```
```R
       x     y   z
[1,] 0.5   1.3 3.5
[2,] 3.9 133.0 2.8
[3,] 0.0   2.2 4.6
[4,] 2.0   7.0 5.1
```
Завдання 4.Створити довільний список (list), в який включити всі базові типи
```R
> x<- list('Kyiv',5.6,123L,TRUE,3+5i)
> print(x)
```
```R
[[1]]
[1] "Kyiv"

[[2]]
[1] 5.6

[[3]]
[1] 123

[[4]]
[1] TRUE

[[5]]
[1] 3+5i
```
Завдання 5. Створити фактор з трьома рівнями «baby», «child», «adult»
```R
x<-factor(c("baby",'child','baby','baby', 'adult', 'child','child', 'adult','baby','adult'))
print(x)
table(x)
```
```R
 [1] baby  child baby  baby  adult child child adult baby  adult
Levels: adult baby child
x
adult  baby child 
    3     4     3 
```
Завдання 6. . Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA
```R
x<-c(1,2,3,4,NA,6,7,NA,9,NA,11)
match(NA, x)
```
```R
[1] 5
```
```R
length(which(is.na(x)))
```
```R
[1] 3
```
Завдання 7.

