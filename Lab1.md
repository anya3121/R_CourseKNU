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
b<- 5.3 ## numeric
print(class(b))
```
```R
[1] "numeric"
```
```R
c<- 123L ## integer
print(class(c))
```
```R
[1] "integer"
```
```R
d<-5+2i ## complex
print(class(d))
```
```R
[1] "complex"
```
```R
e<- TRUE ## logical
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
