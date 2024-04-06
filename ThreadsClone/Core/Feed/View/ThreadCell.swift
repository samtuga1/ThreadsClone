//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 18/03/2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack(
            content: {
            HStack(alignment: .top, content: {
                CircularProfileImage()
                VStack(
                    alignment: .leading,
                    spacing: 15,
                    content: {
                        VStack(
                            alignment: .leading,
                            spacing: 4,
                            content: {
                                Text("Samuel Twumasi")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                Text("How are you doing today")
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                            })
                        HStack(
                            spacing: 16,
                            content: {
                            Button(action: {}, label: {
                                Image(systemName: "heart")
                            })
                            Button(action: {}, label: {
                                Image(systemName: "bubble.right")
                            })
                            Button(action: {}, label: {
                                Image(systemName: "arrow.rectanglepath")
                            })
                            Button(action: {}, label: {
                                Image(systemName: "paperplane")
                            })
                        })
                    .foregroundColor(.black)
                })
                Spacer()
                HStack{
                    Text("10m")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Button(
                        action: {},
                        label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                    })
                }
            })
            Divider()
        })
        .padding()
    }
}

#Preview {
    ThreadCell()
}
