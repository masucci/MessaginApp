//
//  Conversation.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import Foundation

struct Conversation: Decodable, Identifiable {
    let id: String
    let name: String
    let last_updated: Date
    let messages: [Message]
}
