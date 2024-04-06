//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 01/02/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView(
                showsIndicators: false,
                content: {
                LazyVStack(
                    content: {
                    ForEach(1...10, id: \.self) { user in
                        VStack(
                            content: {
                            UserCell()
                           Divider()
                        })
                        .padding(.vertical, 4)
                    }
                })
            })
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Search")
        }
    }
}

#Preview {
    ExploreView()
}
