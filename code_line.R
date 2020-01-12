#input tabel advisedby.csv
advisedby<-read.csv(file.choose(),header = TRUE)
advisedby<-as.data.frame(advisedby)
View(advisedby)

#input tabel person.csv
person<-read.csv(file.choose(),header = TRUE)
person<-as.data.frame(person)
View(person)

#input tabel taughtby.csv
taughtby<-read.csv(file.choose(),header = TRUE)
taughtby<-as.data.frame(taughtby)
View(taughtby)

#input tabel courseby.csv
course<-read.csv(file.choose(),header = TRUE)
course<-as.data.frame(course)
View(course)

#gabung tabel advisedby dengan person membentuk tabel person_gabung
person_gabung <- merge(advisedby, person, all=TRUE)
View(person_gabung)

#gabung tabel taughtby dengan course membentuk tabel course_gabung
course_gabung <- merge(taughtby, course, all=TRUE)
View(course_gabung)

#gabung table person_gabung dengan course_gabung membentuk tabel Akademik
Akademik <- merge(person_gabung, course_gabung, all=TRUE)
View(Akademik)

#final Dataset Tabel AkademikMart
AkademikMart<-Akademik[,c(3,4,5,6,7,9)]

#merubah Record NA menjadi 0
AkademikMart[is.na(AkademikMart)] <- 0
View(AkademikMart)

