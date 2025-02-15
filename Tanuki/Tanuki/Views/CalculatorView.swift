//
//  CalculaterView.swift
//  Tanuki
//
//  Created by Myles Slack on 2025.02.14.
//
import SwiftUI

struct CalculatorView: View {
    @State private var display: String = "0"
    
    let buttons = [
        ["7", "8", "9", "+"],
        ["4", "5", "6", "x"],
        ["1", "2", "3", "-"],
        ["C", "0", "=", "/"]
    ]
    
    var body: some View {
        VStack {
            Text(display)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
            
            ForEach(buttons.indices, id: \.self) { rowIndex in
                HStack {
                    ForEach(buttons[rowIndex], id: \.self) { button in
                        Button(action: {
                            handleButtonPress(button)
                        }) {
                            Text(button)
                                .font(.title)
                                .frame(width: 80, height: 80)
                                .padding(5)
                                .background(isOperator(button) ? Color.orange : Color.gray.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
        .background(Color.black.opacity(0.8))
        .foregroundColor(.white)
    }
    
    private func isOperator(_ button: String) -> Bool {
        ["+", "-", "x", "/"].contains(button)
    }
    
    private func handleButtonPress(_ button: String) {
        if button == "C" {
            display = "0"
        }else if button == "=" {
            //basic calculations
            let expression = NSExpression(format: display.replacingOccurrences(of: "x", with: "*"))
            if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
                display = result.stringValue
            }
        }else{
            if display == "0" {
                display = button
            }else{
                display += button
            }
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
