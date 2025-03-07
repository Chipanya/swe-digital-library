//
//  BookDetail.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-07.
//

import SwiftUI

struct BookDetail: View {
    var book: Book
    
    var body: some View {
        VStack {
            Image(book.image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 300)
            
            Text(book.title)
                .font(.title)
                .padding()
            
            Text(book.description)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .navigationTitle(book.title)
    }
}

#Preview {
    BookDetail(book: .init(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TH"))
}
