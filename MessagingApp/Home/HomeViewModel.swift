//
//  HomeViewModel.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var list: [Conversation] = []
    
    func loadJson() {
        guard let path = Bundle.main.path(forResource: "Conversations", ofType: "json") else {
            // Handle error here
            print("Conversations.json not found.")
            return
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(DateFormatter.iso8601)
            
            let conversations = try decoder.decode([Conversation].self, from: data)
            list = conversations.sorted(by: { $0.last_updated < $1.last_updated }) // Sort by date
        } catch {
            // Handle error here
            print(error)
        }
    }
}
