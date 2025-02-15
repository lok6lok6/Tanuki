//
//  ChatView.swift
//  Tanuki
//
//  Created by Myles Slack on 2025.02.14.
//

import SwiftUI

struct ChatView: View {
    @State private var message = ""
    @State private var messages: [String] = ["Welcome to Tanuki! 🦝"]
    
    var body: some View {
        VStack{
            List(messages, id: \.self) { msg in
                Text(msg)
                    .padding()
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            HStack{
                TextField("Enter message", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: sendMessage) {
                    Text("Send")
                        .padding()
                        .background(Color.blue.opacity(0.3))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                    
            }
            .padding()
        }
    }
    
    func sendMessage() {
        if !message.isEmpty {
            messages.append(message)
            message = ""
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
