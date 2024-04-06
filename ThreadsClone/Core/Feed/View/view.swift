//
//  view.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 01/02/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false, content: {
                LazyVStack{
                    ForEach(0 ... 10, id: \.self){ thread in
                        ThreadCell()
                    }
                }
            })
            .refreshable(action: {
                print("refreshed")
            })
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar(
            content: {
            ToolbarItem(
                placement: .topBarTrailing,
                content: {
                Button(
                    action: {},
                    label: {
                    Image(systemName: "arrow.counterclockwise")
                            .foregroundColor(.black)
                })
            })
        })
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
