//
//  Searchbar.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-05.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Please enter the title or author", text: $searchText)
                        .onChange(of: searchText) { _, _ in
                            
                        }
                }.underlineTextField()
            }
            .frame(width: 375, height: 1)
        }
    }
}
