```
data <- read.csv("C:/Users/Admin/Downloads/olympics.csv", skip = 1,header = TRUE, encoding='UTF-8',stringsAsFactors = FALSE)
```
Напишіть функцію prepare_set <- function(file_name) {} яка в якості аргументу приймає ім’я файлу і повертає дата фрейм. Збережіть цей дата фрейм в змінну olympics olympics <- prepare_set(“olympics.csv”)
Функція prepare_set повинна виконувати наступні дії:
1. Зчитати файл
read.csv("olympics.csv", skip = 1, header = TRUE, encoding="UTF-8", stringsAsFactors = FALSE)
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
> prepare_set <- function(file_name) { 
+     data <- read.csv(file_name, skip = 1, header = TRUE, encoding='UTF-8', stringsAsFactors = FALSE) 
+     names(data) <- 'Country'
+     t<- length(colnames(data[1]))
+     for (i in 1:t) {
+         colnames(data)=sub("X..", "", colnames(data), fixed=TRUE)
+         colnames(data)=sub("X01..", "Gold", colnames(data))
+         colnames(data)=sub("X02..", "Silver", colnames(data))
+         colnames(data)=sub("X03..", "Bronze", colnames(data))
+     }
+     country_names <- strsplit(data$Country, "(", fixed = TRUE)
+     data$Country <- sapply(country_names, "[", 1)
+     data$ID <- substr(sapply(country_names, '[', 2), 1,3)
+     data <- data[-which(data$Country == 'Totals'), ]
+     data}
olympics <- prepare_set(“C:/Users/Admin/Downloads/olympics.csv”)
```
Питання 1
Котра країна виграла найбільшу кількість золотих нагород на літніх іграх?
Функція повинна повернути одне текстове значення
```
answer1<-function() {
olympics[which.max(olympics$Gold), "Country"]
}
answer1()
```
```
[1] "United States"
```
Питання 2
Яка країна має найбільшу різницю між кількістю нагород на літніх та зимових
іграх?
Функція повинна повернути одне текстове значення.
```
answer2<-function() {
  olympics[which.max(olympics$Total-olympics$Total.1), "Country"]
}
answer2()
```
```
[1] "United States"
```
Питання 3
В якій крайні найбільша різниця між літніми та зимовими золотими нагородами відносно до загальної кількості нагород (Summer Gold - Winter Gold) / Total Gold. Врахувати тільки країни які мають як мінімум по одній нагороді в літніх та
зимових іграх.
Функція повинна повернути одне текстове значення.
```
answer3<-function() {
  my_subset<-subset(olympics, Gold>=1 & Gold.1>=1)
  my_subset[which.max((my_subset$Gold-my_subset$Gold.1)/my_subset$Gold.2), "Country"]
}
answer3()
```
```
[1] "Bulgaria"
```
Питання 4
Необхідно знайти кількість балів по кожній крайні. Бали рахуються наступним чином: Золота нагорода Gold.2 це три бали, срібна Silver.2 - 2 бали та бронзова Bronze.2 – 1 бал. Функція повинна повертати дата фрейм довжиною 146, який складається з двох
колонок: "Country", "Points".
```
answer4<-function() {
  olympics$Points<-(olympics$Gold.2*3 + olympics$Silver.2*2 + olympics$Bronze.2*1)
  olympics[, c("Country", "Points")]
  }
head(answer4())
```
```
       Country Points
1 Afghanistan       2
2     Algeria      27
3   Argentina     130
4     Armenia      16
5 Australasia      22
6   Australia     923
```
Частина 2
```
census_df <- read.csv("C:/Users/Admin/Downloads/census.csv", stringsAsFactors = FALSE)
```
Питання 5
В якому штаті (state) більше всього округів (county)? Функція повинна повернути одне текстове значення
```
> answer5<-function() {
+     census_df<-split(census[ , "CTYNAME"], census[ , "STNAME"])
+     ncounty<-sapply(census_df, length)
+     which.max(ncounty)
+ }
> answer5()
```
```
Texas 
   44 
```
Питання 6
Якщо розглядати три найбільш населених округа (county) з кожного штату, які три
найбільш населені штати (в порядку з більш до менш населеного)?
Використовуйте CENSUS2010POP.
Функція повинна повернути вектор з трьох текстових значень.
```
answer6<-function() {
 order_df<-census[order(census$STNAME, -census$CENSUS2010POP), ]
 df_split<-split(order_df, order_df$STNAME)
 df_split<-lapply(df_split, function (x) sum (x[2:4, "CENSUS2010POP"]))
 df_split<-df_split[order(unlist(df_split), decreasing = TRUE, na.last = TRUE)]
 names(df_split) [1:3]
}
answer6() 
```
```
[1] "California" "Texas"      "Illinois"  
```
Питання 7
Який округ (county) має найбільшу абсолютну зміну в населенні протягом
періоду 2010-2015?
(Підказка: значення населення зберігається в колонках з POPESTIMATE2010 до
POPESTIMATE2015. Необхідно розглядати всі шість колонок).
Якщо населення округу за 5річний період 100, 120, 80, 105, 100, 130, то найбільша
різниця за період буде |130-80|=50.
Функція повинна повернути одне текстове значення.
```
> answer7<-function() {
+     population<-subset(census, COUNTY !=0, select=c(10:15))
+     popul_max<-apply(population, 1, max)
+     popul_min<-apply(population, 1, min)
+     popul_chg<-(popul_max-popul_min)
+     name<-subset(census, COUNTY!=0, CTYNAME)
+     popul<-cbind(name, popul_chg)
+     population<-popul$CTYNAME
+     population[which.max(popul_chg)]
+ }
>  answer7()
```
```
[1] "Harris County"
```
Питання 8
В census_df США поділені на 4 регіони (колонка "REGION"). Напишіть функцію,
яка знаходить округи (county), що належать регіонам 1 або 2, назва яких
починається з "Washington" та POPESTIMATE2015 більше ніж POPESTIMATE2014.
Функція повинна повернути 5х2 дата фрейм з колонками "STNAME", "CTYNAME".
```
answer8 <- function() {
subset_1<-subset(census, (REGION==1 | REGION==2))
subset_2<-subset_1[grep("Washington", subset_1$CTYNAME),]
subset_3<-subset(subset_2, POPESTIMATE2015>POPESTIMATE2014)
subset_3[ , c("STNAME", "CTYNAME")]
}
answer8() 
```
```
           STNAME           CTYNAME
897          Iowa Washington County
1420    Minnesota Washington County
2346 Pennsylvania Washington County
2356 Rhode Island Washington County
3164    Wisconsin Washington County
```

