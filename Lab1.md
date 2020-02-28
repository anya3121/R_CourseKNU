1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```R
a<-'Kiev' ## character
print(class(a))
```
```R
[1] "character"
```
b<- 5.3 ## numeric
print(class(b))
```
c<- 123 ## integer
d<-5+2i ## complex
e<- TRUE ## logical

2.Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
a<-(5:75)
b<-x(3.14, 2.71, 0, 13)
c<-vector(rep(TRUE,100))
