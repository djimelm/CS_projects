//
//  Cash.swift
//  Ind01_michael_djimeli
//
//  Created by Djimeli Nkenne, Michael on 1/26/24.
//

import Foundation

class Cash {
    // Stored property for the amount of money
    private  var moneyAmount : Double = 0.0
    
    // Computer property
    
    var moneyRepresentation : [Int]{
        get{
            // If the amount is negative we will return the empy array
            guard moneyAmount >= 0 else {return [] }
            let denominations : [Double] = [50, 20, 10, 5, 1, 0.25, 0.10, 0.05, 0.01]
            var remainingAmount = moneyAmount
            var representation  = [Int]()
            for denomination in denominations {
                let count = Int(remainingAmount / denomination)
                representation.append(count)
                remainingAmount -= Double(count) * denomination
            }
            return representation
        }
        set(newValue){
            //check if the array length is 9
            guard newValue.count == 9 else{
                moneyAmount = -1
                return
            }
            
            let denominations : [Double] = [50, 20, 10, 5, 1, 0.25, 0.10, 0.05, 0.01]
            moneyAmount = zip (denominations, newValue).map{$0 * Double ($1)}.reduce(0, +)
            
        }
    }
    init (_ initialAmount: Double){
        self.moneyAmount = initialAmount
    }
    init(){
        self.moneyAmount = 0
    }
}
