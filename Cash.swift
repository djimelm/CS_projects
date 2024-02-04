//
//  Cash.swift
//  Ind01_michael_djimeli
//
//  Created by Djimeli Nkenne, Michael on 1/26/24.
//

import Foundation

class Cash {
    // Stored property for the amount of money dollar and cents
    private  var amountOfMoney : Double = 0.0
    
    // Computer property
    
    var usBillAndCoins : [Int]{
        get{
            // If the amount is negative we will return the empy array
            let amount = amountOfMoney 
            guard let amount >= 0 else {return [] }


            let bills : [Double] = [50, 20, 10, 5, 1, 0.25, 0.10, 0.05, 0.01]
            var remainingBill = amountOfMoney
            var returnBill  = [Int]()
            for bill in bills {
                let countBill = Int(remainingBill / bill)
                returnBill.append(countBill)
                remainingBill -= Double(countBill) * bill
            }
            return returnBill
        }

        
        set(newValue){
            //check if the array length is 9
            guard newValue.count == 9 else{
                amountOfMoney = -1
                return
            }
            
            let denominations : [Double] = [50, 20, 10, 5, 1, 0.25, 0.10, 0.05, 0.01]
            amountOfMoney = zip (denominations, newValue).map{$0 * Double ($1)}.reduce(0, +)
            
        }
    }
    init (_ initialAmount: Double){
        self.amountOfMoney = initialAmount
    }
    init(){
        self.amountOfMoney = 0
    }
}
