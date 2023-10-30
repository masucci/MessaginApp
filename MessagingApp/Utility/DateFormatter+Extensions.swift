//
//  DateFormatter+Extensions.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 30/10/2023.
//

import Foundation

extension DateFormatter {
    static var iso8601: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return formatter
    }
    
    static var customFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy HH:mm"
        return formatter
    }
}
