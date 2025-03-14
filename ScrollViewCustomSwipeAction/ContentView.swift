//
//  ContentView.swift
//  ScrollViewCustomSwipeAction
//
//  Created by NAUV on 14/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100, id: \.self) { index in
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 45)
                    .swipeActions {
                        Action(symbolImage: "checkmark.circle.fill", tint: .white, background: .green) { resetPosition in
                            resetPosition.toggle()
                        }
                        
                        Action(symbolImage: "doc.on.doc", tint: .white, background: .orange) { resetPosition in
                            resetPosition.toggle()
                        }
                        
                        Action(symbolImage: "trash.fill", tint: .white, background: .red) { resetPosition in
                            resetPosition.toggle()
                        }
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
