

import Foundation

let a = 10.0
let b = 14.0
let c = -20.0
var x1 = 0.0
var x2 = 0.0

let discriminant = b * b - 4 * a * c

if discriminant < 0 {
    print("Корней нет")
} else if discriminant == 0 {
    x1 = -b/(2 * a)
} else {
    x1 = (-b - sqrt(discriminant))/(2 * a)
    x2 = (-b + sqrt(discriminant))/(2 * a)
}
print(discriminant)
print(x1)
print(x2)

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let cathet1 = 10
let cathet2 = 20

let hypotenuse = sqrt((pow(cathet1, 2)) + (pow(cathet2, 2)))
let yardage = (1/2)*(cathet1 * cathet2)
let perimeter = cathet1 + cathet2 + hypotenuse
print (yardage)
print (perimeter)
print (hypotenuse)


//3. *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
let summa:Double = 10000
let percent:Double = 12.5
let years:Double = 5
let daysYear:Double = 365 * years

let end = ( summa * percent * (years/daysYear))/100
let summaEnd = summa + end

print (end)
print(summaEnd)


