//
//  main.swift
//  Ind01_michael_djimeli
//
//  Created by Djimeli Nkenne, Michael on 1/26/24.
//

import Foundation
print("Programme Start")
var cash1 = Cash(-10.50)    // NEgative numberto the the functionallities
var cash2 = Cash(23.5)
var cash3 = Cash(12)

print("Initial Values")
print("cash1:  \(cash1.moneyRepresentation)")
print("cash2:  \(cash2.moneyRepresentation)")



//define the array

let array2 = [0, 1, 0, 0, 3, 2, 0, 0, 0]


cash2.moneyRepresentation =  array2

// let print the update if cash2

print("\n Update Cash  Value")

print("cash2: \(cash2.moneyRepresentation)")
