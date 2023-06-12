//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Josue Cruz on 6/11/23.
//

import Foundation

extension Date {
    
    var eighteenYearAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredYearAgo: Date {
        Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
}
