//
//  Double.swift
//  CryptoApp
//
//  Created by user@59 on 20/10/24.
//

import Foundation



extension Double {
    
    /// Converts a Double into a currency with 2 decimal places
    /// '''
    /// Convert 1234.56 to $1,234.56
    /// '''
    private var currencyFormatter2 : NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
       // formatter.locale = .current // default value
        //formatter.currencyCode = "USD" // change currency
       // formatter.currencySymbol = "$" // change currency model
        
        formatter.maximumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    /// Converts a Double into a currency with 2  decimal places
    /// '''
    /// Convert 1234.56 to $1,234.56
    /// '''
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from : number) ?? "$0.00"
    }
    
    /// Converts a Double into a currency with 2- 6 decimal places
    /// '''
    /// Convert 1234.56 to $1,234.56
    /// '''
    private var currencyFormatter6 : NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
       // formatter.locale = .current // default value
        //formatter.currencyCode = "USD" // change currency
       // formatter.currencySymbol = "$" // change currency model
        
        formatter.maximumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    /// Converts a Double into a currency with 2 - 6 decimal places
    /// '''
    /// Convert 1234.56 to $1,234.56
    /// '''
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from : number) ?? "$0.00"
    }
    
    func asNumberString() -> String{
        return String(format : "%.2f", self )
    }
    
    func asPercentString() -> String{
        return asNumberString() + "%"
    }
        
    }

