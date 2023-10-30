//
//  Message.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import Foundation

struct Message: Decodable, Identifiable {
    let id: String
    let text: String
    let last_updated: Date
}
