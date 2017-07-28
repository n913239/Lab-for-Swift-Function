// 首先定義作業的二維陣列 [[Int]] 如果是3d 可以用 [[[Int]]]
// 另外一種宣告方法
 var array2DD = Array(repeating: Array(repeating: 0, count: 8), count: 8)

var array2D: [[Int]] = [
   [0,0,0,0,0,0,0,0],
   [0,1,2,3,4,5,6,7],
   [0,2,4,6,8,10,12,14],
   [0,3,6,9,12,15,18,21],
   [0,4,8,12,16,20,24,28],
   [0,5,10,15,20,25,30,35],
   [0,6,12,18,24,30,36,42],
   [0,7,14,21,28,35,42,49]]

// Lab1 算全部格子的總合
var result1 = 0
// 首先展開第一層陣列後，再依序展開數值
for array1 in array2D {
    for number in array1 {
        result1 += number
    }
}
result1 // 784

// Lab2 奇數行的數字總合
var result2 = 0
// 首先取出第一層以後，再取奇數行，也就是除以2餘數為1的，可以採用where條件
// 由於我們要用到array的Index，所以加入了enumerated()方法
for (array1Index,array1value) in array2D.enumerated() {
    for number in array1value where array1Index % 2 == 1 {
        result2 += number
    }
}
result2 // 448

// Lab3 所有格 的總合，除列數>=行數的格
var result3 = 0
// 首先取出第一層以後，再取奇數行，也就是除以2餘數為1的，可以採用where條件
// 由於我們要用到array的Index，所以加入了enumerated()方法
for (array1Index,array1value) in array2D.enumerated() {
    for (array2Index,array2value) in array1value.enumerated() where array1Index < array2Index {
        result3 += array2value
    }
}
result3 // 322
