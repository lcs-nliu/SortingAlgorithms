//
//  main.swift
//  BinarySearch
//
//  Created by Liu, Bojun on 2021-03-23.
//

import Foundation

var dataSet: [Int] = []


for n in 1...20 {
    dataSet.append(n)
}

var searchingFor = 4
var low = 0
var high = dataSet.count - 1
var middle = (low + high)/2


print(dataSet)
waitForInput()



repeat {


    if searchingFor > dataSet[middle] {
        low = middle
        print("New low is \(dataSet[low])")
    } else if searchingFor < dataSet[middle] {
        high = middle
        print("New high is \(dataSet[high])")
    }

    middle = (low+high)/2
    print("New middle is \(dataSet[middle])")


} while searchingFor != dataSet[middle]


print("Found \(searchingFor)")



