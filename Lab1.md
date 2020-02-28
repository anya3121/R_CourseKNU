1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```R
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
c<- 123 ## integer
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
a<-(5:75)
b<-x(3.14, 2.71, 0, 13)
c<-vector(rep(TRUE,100))
