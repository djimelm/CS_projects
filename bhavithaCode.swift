import Foundation
//import UIKit

// Cash class representing an amount of money and providing methods to calculate bills and coins
class Cash {
    var amount: Double = 0.0
   
    // Initializer with a Double parameter
    init(_ amount: Double) {
        self.amount = amount
    }
   
    // Initializer with no parameters, defaults to 0.0
    init() {
        self.amount = 0.0
    }
   
    // Computed property to calculate bills and coins
    var billsAndCoins: [Int] {
        get{
            // Check if the amount is negative, return an empty array for an error state
            if  amount < 0 {
            return []
            }

            // Initialize variables for calculations
            var remainingAmount = Int(amount * 100)
            var resultArray = [0, 0, 0, 0, 0, 0, 0, 0, 0] // Array to store counts of bills and coins
        
            // Denominations in cents: $50, $20, $10, $5, $1, 25¢, 10¢, 5¢, 1¢
            let denominations = [5000, 2000, 1000, 500, 100, 25, 10, 5, 1]
        
            // Iterate through denominations to calculate counts
            for (index, denomination) in denominations.enumerated() {
                resultArray[index] = remainingAmount / denomination
                remainingAmount %= denomination
            }
        
            return resultArray
        }
        set(values){
            // Check if the provided array has the correct length
            if values.count != 9 {
                amount = -1 // Assign -1 for an error state
                return
            }
            var newAmount = 0
       
            // Denominations in cents: $50, $20, $10, $5, $1, 25¢, 10¢, 5¢, 1¢
            let denominations = [5000, 2000, 1000, 500, 100, 25, 10, 5, 1]
        
            // Iterate through values array to calculate the new amount
            for (index, denomination) in denominations.enumerated() {
                // Check if the count of bills or coins is negative
                if values[index] < 0 {
                    amount = -1 // Assign -1 for an error state
                    return
                }
                newAmount += values[index] * denomination
            }
        
            // Update the amount property
            amount = Double(newAmount) / 100.0
                
        }
       
       
        
    }
}

// Testing
var cash1 = Cash(-10.55)
var cash2 = Cash()
var cash3 = Cash(45.67)
var cash4 = Cash(89.12)
var cash5 = Cash(28.56)
var cash6 = Cash(62.99)

// Display original amounts and bills/coins
print("Original Amounts:")
print("Cash 1: $\(cash1.amount) - Bills and Coins: \(cash1.billsAndCoins)")
print("Cash 2: $\(cash2.amount) - Bills and Coins: \(cash2.billsAndCoins)")
print("Cash 3: $\(cash3.amount) - Bills and Coins: \(cash3.billsAndCoins)")
print("Cash 4: $\(cash4.amount) - Bills and Coins: \(cash4.billsAndCoins)")
print("Cash 5: $\(cash5.amount) - Bills and Coins: \(cash5.billsAndCoins)")
print("Cash 6: $\(cash6.amount) - Bills and Coins: \(cash6.billsAndCoins)")

// Define arrays for setting bills and coins
var array1 = [2, 3, 1, 0, 4, 2] // length 6
var array2 = [0, 2, 0, 1, 2, 0, 2, 0, 3] // length 9
var array3 = [1, 1, 1, 1, 1, 1, 1, 1, 0] // length 9
var array4 = [1, 1 ,0, 1, 3, 0, 1, 0, 4] // length 9
var array5 = [1, 1, 1, 0, 0, 3, 0, 1, 0]// length 9
var array6 = [1, 0, 1, 0, 2, 3, 2, 0, 4] // length 9

// Set bills and coins for each Cash variable
cash1.billsAndCoins = array1
cash2.billsAndCoins = array2
cash3.billsAndCoins = array3
cash4.billsAndCoins = array4
cash5.billsAndCoins = array5
cash6.billsAndCoins = array6

// Display amounts and bills/coins after setting
print("\nAmounts After Setting Bills and Coins:")
print("Cash 1: $\(cash1.amount) - Bills and Coins: \(cash1.billsAndCoins)")
print("Cash 2: $\(cash2.amount) - Bills and Coins: \(cash2.billsAndCoins)")
print("Cash 3: $\(cash3.amount) - Bills and Coins: \(cash3.billsAndCoins)")
print("Cash 4: $\(cash4.amount) - Bills and Coins: \(cash4.billsAndCoins)")
print("Cash 5: $\(cash5.amount) - Bills and Coins: \(cash5.billsAndCoins)")
print("Cash 6: $\(cash6.amount) - Bills and Coins: \(cash6.billsAndCoins)")