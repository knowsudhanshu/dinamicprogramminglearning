/*
Question 1.2: Given an array, arr, of integers, write a recursive function that add sum of all the previous numbers to each index of the array. e.g.
Input: [1,2,3,4,5,6]
Output: [1,3,6,10,,15,21]
*/
func sumAllPrevNumbers(in array: [Int]) -> [Int] {
    guard array.isEmpty == false else {
        return []
    }
    var input = array
    var sum = 0
    let currentIndex = 0
    _ = getSum(input: &input, currentIndex: currentIndex, sum: &sum)
    return input
}

func getSum(input: inout [Int], currentIndex: Int, sum: inout Int) -> Int {
    print(input)
    if currentIndex >= input.count {
        return 0
    }
    if currentIndex == 0 {
        sum = input[currentIndex]
    } else {
        sum = input[currentIndex - 1] + input[currentIndex]
    }
    input[currentIndex] = sum
    return getSum(input: &input, currentIndex: currentIndex + 1, sum: &sum)
} 


let input = [1,2,3,4,5,6]
// let output = [1,3,6,10,15,21]

let output = sumAllPrevNumbers(in: input)
print("output: \(output)")
