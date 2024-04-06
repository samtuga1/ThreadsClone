//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 18/03/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        
        HStack(
            content: {
                CircularProfileImage()
                VStack(
                    alignment: .leading,
                    content: {
                        Text("Samuel Twumasi")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Description here")
                            .font(.footnote)
                    })
                Spacer()
                Button(
                    action: {},
                    label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(maxWidth: 100, maxHeight: 32)
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            })
                    })
                .foregroundColor(.black)
                
            }) .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
