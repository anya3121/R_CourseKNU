1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
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
2.Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
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
Створити наступну матрицю за допомогою matrix, та за допомогою cbind
або rbind:
0.5 1.3 3.5
3.9 131 2.8
0 2.2 4.6
2 7 5.1
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
