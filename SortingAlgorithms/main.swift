//
//  main.swift
//  SortingAlgorithms
//
//  Created by Liu, Bojun on 2021-03-19.
//

import Foundation

// Pause to allow the user to see output
func waitForInput() {
    print("Press RETURN to contiue...")
    _ = readLine()
}

// Create an empty array
var dataSet: [Int] = []

// Populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInput()

// Sort the array

var sorted = 0
var isSwapping = false

// Loop through the entire array 'n' times
// However many times there are elements in the array
for i in 0..<dataSet.count {
    
    isSwapping = false
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - sorted - 1 {
        
        // Compare left value to right value
        if dataSet[j]>dataSet[j+1] {
            isSwapping = true
            // Swap values when left value is greater than the right value
            let temporaryValue = dataSet[j]     // Set aside the left value
            dataSet[j] = dataSet[j+1]           // Replace left value with right
            dataSet[j+1] = temporaryValue       // Replace right value with left
            
        }
        
        
    }
    
    if isSwapping == false {
        break
    }
    
    
    sorted += 1
    
    
    
    // Print the array after 'n' passes
    print("Array after pass \(i+1)")
    print(dataSet)
    waitForInput()
    
}

// Print the sorted array
print("Sorted:")
print(dataSet)
waitForInput()

