//
//  main.swift
//  CurseOne
//
//  Created by admin on 20.01.22.
//

import Foundation

print("Hello, World!")

//1. Написать функцию, которая определяет, четное число или нет
let numberFunction  = [4, 7, 14, 21, 28, 63]
for number in numberFunction {
if number % 2 == 0 {
print("\(number) четное число")
    } else {
print("\(number) нечетное число")
    }
}
//2. Написать функцию, которая определит делится ли число без остатка на 3.
for divideThree in numberFunction {
if divideThree % 3 == 0 {
print("\(divideThree) делится на 3 без остатка")
    } else {
print("\(divideThree) делится на 3 с остатком")
    }
}
//3. Создать возврастающий массив из 100 чисел.
var oneHundredNumber: Array<Int> = []
for number in 1...100{
    oneHundredNumber.append(number)
}
print(oneHundredNumber)
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var toDelete = oneHundredNumber.filter {$0 % 2 != 0 && $0 % 3 == 0}
print (toDelete)
//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibonacciArray(_ n: Int) -> [Double] {
var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
return fibonacci
}
print(fibonacciArray(100))
//6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
func primeNumbers(arrayPassed: [Int]) -> [Int] {
var primes: [Int] = []
var newArr = arrayPassed
while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
return primes
}
print(primeNumbers(arrayPassed: Array(2...100)))
