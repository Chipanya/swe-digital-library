//
//  Library.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-07.
//

import SwiftUI

struct Library: View {
    @State private var searchText: String = ""
    @State private var selectedCategory: String = "Books"
    
    var categories: [String] = [
        "Books", "Journals", "Database", "Videos"
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xB7F9F5)
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    
                    SearchBar(searchText: $searchText)
                        .padding()
                    
                    Picker("Categories", selection: $selectedCategory) {
                        ForEach(categories, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 360)
                    
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(libraryList, id: \.id) { book in
                                NavigationLink(destination: BookDetail(book: book)) {
                                    VStack {
                                        Image(book.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 170)
                                            .shadow(radius: 5, x: 3, y: 3)
                                    }
                                    .padding(5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    Library()
}
