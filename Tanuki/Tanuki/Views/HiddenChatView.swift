//
//  HiddenChatView.swift
//  Tanuki
//
//  Created by Myles Slack on 2025.02.14.
//
import SwiftUI

struct HiddenChatView: View {
    @State private var isChatUnlocked: Bool = false
    
    var body: some View {
        ZStack {
            if isChatUnlocked {
                ChatView() // this is the real Chat UI
            }else{
                CalculatorView()
                    .gesture(LongPressGesture(minimumDuration: 3.0)
                        .onEnded{ _ in
                            withAnimation {
                                isChatUnlocked = true
                            }
                        })
            }
        }
    }
}

struct HiddenChatView_Previews: PreviewProvider {
    static var previews: some View {
        HiddenChatView()
    }
}
