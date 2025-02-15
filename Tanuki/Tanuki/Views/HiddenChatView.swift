//
//  HiddenChatView.swift
//  Tanuki
//
//  Created by Myles Slack on 2025.02.14.
//
import SwiftUI

struct HiddenChatView: View {
    @State private var isChatUnlocked = false
    @State private var userInput = "" // Track user input

    var body: some View {
        ZStack {
            if isChatUnlocked {
                ChatView() // This is the real Chat UI
            } else {
                VStack {
                    CalculatorView(userInput: $userInput)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .onChange(of: userInput) { newValue in
                    if newValue == "304" {
                        withAnimation {
                            isChatUnlocked = true
                        }
                    }
                }
            }
        }
    }
}

struct HiddenChatView_Previews: PreviewProvider {
    static var previews: some View {
        HiddenChatView()
    }
}
