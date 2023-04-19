/*
let constArray = ["a", "b", "c", "d"]
constArray.count
var array = [String]()

if array.isEmpty {
    print("array is empty")
}

array += constArray
array += ["e"]
array.append("f")
var array2 = array

array
array2

array2[0] = "1"

array
array2

//array[1...4] = ["0"]
//array

array.insert("-", at: 2)
array

array.remove(at: 2)
array


let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

var sum = 0
for  var i in 0...9 {
    if i < money.count {
        sum += money[i]
        i += 1
    }
}

print(sum)

sum = 0

for i in 0..<money.count {
    sum += money[i]
}
print(sum)


sum = 0

for i in money {
    sum += i
}
print(sum)

 
 ДОМАШНЕЕ ЗАДАНИЕ 07 Массивы - 32:31
 
 1 создать массив из 12 элементов, каждый из которых равняется количеству дней в соответствующем месяце.
  вывести весь массив
  создать еще один массив, в котором будут  имена месяцев в том же порядке
  вывести через цикл for-in название месяца и количество дней в нем
  создать третий массив тюплов в кадом по два элемента (название, количество дней)
  повторить вывод через цикл для третьего массива
  вывести через цикл все в обратном порядке
  посчитать количество дней до дня  рождения

 2 создать массив опциональных Int заполнить его пятью константами, некотороые из которых nil найти через цикл сумму, используя optional-binding,
 force unwrapping and ??
 
 3 создать пустой массив строк, создать строку алфавита, пройтись по ней в цикле и присвоить постепенно каждой букве место в массиве, на выходе должен быть алфавит задом наперед
 */
 

//1

let numbersArray = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
print(numbersArray)

let namesArray = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

for var i in 0...11 {
    if i < numbersArray.count {
        print("\(namesArray[i]) \(numbersArray[i])")
    }
}
var jan = ("jan", 31)
var feb = ("feb", 28)
var mar = ("mar", 31)
var apr = ("apr", 30)
var may = ("may", 31)
var jun = ("jun", 30)
var jul = ("jul", 31)
var aug = ("aug", 31)
var sep = ("sep", 30)
var oct = ("oct", 31)
var nov = ("nov", 30)
var dec = ("dec", 31)

var tuplesArray = [jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec]

for var j in 0...11 {
    if j < tuplesArray.count {
        print ("\(tuplesArray[j])")
    }
}
                   
for var k in 0...11 {
    if k < tuplesArray.count {
        print("\(tuplesArray[11-k])")
    }
}


let dOB = (day:26, month:2)
var days = 0

for s in 0..<(dOB.month - 1) {
    days += numbersArray[s]
}
days += dOB.day - 1
print(days)


//2
var optionalArray = [Int?]()
optionalArray += [1]
optionalArray += [nil]
optionalArray += [3]
optionalArray += [4]
optionalArray += [5]

var forceUnwrSum = 0

for var g in 0...4 {
    if g < optionalArray.count {
        if optionalArray[g] != nil {
            forceUnwrSum += optionalArray[g]!
        }
    }
}
print(forceUnwrSum)
/*
var optBindSum = 0

for var y in 0...4 {
    if let const = Int(optionalArray[y]) {
        optBindSum += optionalArray[y]
    }
}
 я вроде делал все как в твоем файле по опшеналам, но че то свифт ругается
*/


//3

let letters = "abcdefghijklmnopqrstuvwxyz"
var alphabetArray = [String]()
var char = 0
for char in letters {
    alphabetArray.insert(String(char), at: 0)
}
print(alphabetArray)
