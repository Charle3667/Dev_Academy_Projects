import Cocoa


var year = 2021

var birthyear = 1996

let name = "Charlie"


print("The year is \(year). My name is \(name) and I am now \(year-birthyear) years old.")
for i in (1...5) {
    year += 1
    print("The year is \(year). My name is \(name) and I am now \(year-birthyear) years old.")
}
print(year)


