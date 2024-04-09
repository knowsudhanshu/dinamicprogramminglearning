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

/*
Question 1.6:
Write a function which accept characters representing 3 rods S,D and E and the number of discs (n),
and print the movement of discs between pegs such that all discs are moved from the initial state (inside S) to the final state (inside D).
*/

func towerOfHanoi(sourcePeg: String, destinationPeg: String, extraPeg: String, disk: Int) {
    if disk <= 0 {
        return
    }
    
    towerOfHanoi(sourcePeg: sourcePeg, destinationPeg: extraPeg, extraPeg: destinationPeg, disk: disk - 1)

    print("disk: \(disk), from: \(sourcePeg), to: \(destinationPeg)")

    towerOfHanoi(sourcePeg: extraPeg, destinationPeg: destinationPeg, extraPeg: sourcePeg, disk: disk - 1)
}


towerOfHanoi(sourcePeg: "Source", destinationPeg: "Destination", extraPeg: "Extra", disk: 3)

/*
Table of n Iterative and recursive approaches
*/

let n = 2

/// Iterative approach
// func tableIterative(of n: Int) {
//     for i in 1...10 {
//         print(n*i)
//     }
// }
// tableIterative(of: n)

/// Recursive approach
func tableRecursive(of n: Int, times: Int = 1) {
    if times > 10 {
        return
    }
    print(n*times)
    tableRecursive(of: n, times: times + 1)
}

tableRecursive(of: n)
