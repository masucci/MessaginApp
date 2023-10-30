//
//  ConversationViewModel.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import Foundation

final class ConversationViewModel: ObservableObject {
    @Published var messages: [Message]
    
    init(messages: [Message]) {
        self.messages = messages.sorted(by: { $0.last_updated < $1.last_updated })
    }
    
    func addMessage(text: String) {
        messages.append(Message(id: UUID().uuidString,
                               text: text,
                                last_updated: Date()))
    }

    func formatDate(dateString: String) -> String {
        if let date = DateFormatter.iso8601.date(from: dateString) {
            let formattedDate = DateFormatter.customFormat.string(from: date)
            return formattedDate
        } else {
            return "Date not available"
        }
    }
}
