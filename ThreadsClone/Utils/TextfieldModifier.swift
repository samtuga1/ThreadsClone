//
//  TextfieldModifier.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 31/01/2024.
//

import SwiftUI

struct TextfieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
