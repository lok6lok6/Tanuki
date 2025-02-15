//
//  CalculaterView.swift
//  Tanuki
//
//  Created by Myles Slack on 2025.02.14.
//
import SwiftUI

struct CalculatorView: View {
    @Binding var userInput: String // Pass user input from HiddenChatView

    let buttons = [
        ["7", "8", "9", "÷"],
        ["4", "5", "6", "×"],
        ["1", "2", "3", "-"],
        ["C", "0", "=", "+"]
    ]

    var body: some View {
        VStack {
            Text(userInput.isEmpty ? "0" : userInput) // Show user input
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .background(Color.black.opacity(0.2))

            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { button in
                        Button(action: {
                            handleButtonPress(button)
                        }) {
                            Text(button)
                                .font(.title)
                                .frame(width: 70, height: 70)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
        .background(Color.black.opacity(0.8))
        .foregroundColor(.white)
    }

    private func handleButtonPress(_ button: String) {
        if button == "C" {
            userInput = ""
        } else if button == "=" {
            // Prevent switching when pressing "="
        } else {
            userInput += button
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(userInput: .constant(""))
    }
}
