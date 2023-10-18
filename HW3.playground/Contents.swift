import UIKit

//Task 1
let teaMenu: [String: Int] = ["Пуэр" : 100, "Улун" : 150, "Зеленый чай" : 200, "Белый чай" : 250]

let people: [String] = ["Пуэр", "Пуэр", "Улун", "Белый чай", "Белый чай"]

func task1(teaMenu: [String: Int], people: [String]) {
    for (index, order) in people.enumerated() {
        print(index, order, teaMenu[order] ?? "")
    }
}

//Task 1.1

let oldArr = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]

var newArr: [Int] = []

func task2(oldArr: [Int?]) -> [Int]{
    var newArr: [Int] = oldArr.compactMap{
        $0
    }
    
    newArr.filter{
         $0 != 0 && $0 != 4
    }
    
    return newArr
}

newArr = task2(oldArr: oldArr)

//Task 1.2

func task3(num: Int) -> [Int]{
    var k: [Int] = []
    
    for item in 1...num {
        k.append(item)
    }
    
    return k
}

