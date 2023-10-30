//
//  HomeView.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.list) { conversation in
                NavigationLink (destination:
                                    ConversationView(viewModel: ConversationViewModel(messages: conversation.messages))) {
                    Label(conversation.name, systemImage: "globe")
                        .accessibilityIdentifier("ui.cell.conversationID.\(conversation.id)")
                        .padding()
                }
            }
            .navigationTitle("Conversations")
        }
        .onAppear {
            viewModel.loadJson()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
