//
//  ConversationView.swift
//  MessagingApp
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import SwiftUI

struct ConversationView: View {
    @ObservedObject var viewModel: ConversationViewModel
    @State var text: String = ""
    
    init(viewModel: ConversationViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List {
            ForEach(viewModel.messages, id: \.id) { message in
                VStack(alignment: .leading) {
                    Label(message.text, systemImage: "message")
                        .accessibilityIdentifier("ui.cell.message.\(message.id)")
                    Text(message.last_updated.description)
                }
            }
        }
        HStack(alignment: .top) {
            VStack {
                TextField("Describe yourself", text: $text, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(5)
            }
            
            Button {
                viewModel.addMessage(text: text)
                text = ""
            } label: {
                Image(systemName: "paperplane.circle.fill")
                    .font(.title)
            }
            .disabled(text.isEmpty)
        }
        .padding()
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView(viewModel: .init(messages: []))
    }
}
