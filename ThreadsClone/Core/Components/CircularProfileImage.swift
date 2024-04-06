//
//  CircularProfileImage.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 18/03/2024.
//

import SwiftUI

struct CircularProfileImage: View {
    var body: some View {
        Image("mypic")
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImage()
}
