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
        ZStack {
            Color(hex: 0xB7F9F5)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                ScrollView {
                    HStack(spacing: 10) {
                        VStack {
                            Image(book.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 250)
                        }

                        
                        VStack(alignment: .leading, spacing: 0) {
                            
                            Text(book.title)
                                .font(.title)
                            
                            Text("by \(book.author)")
                            
                            HStack(spacing: 20) {
                                Button("Continue") {
                                    
                                }
                                .buttonStyle(.bordered)
                                .foregroundStyle(.white)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .padding(.top)
                                
                                Button("Download") {
                                    
                                }
                                .buttonStyle(.bordered)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .padding(.top)
                            }
                        }
                        //.frame(alignment: .leading)
                    }
                    
                    Text(book.description)
                        .font(.subheadline)
                        .padding()
                    
                    VStack {
                        Text("You might also be interested in...")
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<relatedBooks.count, id: \.self) { index in
                                    VStack {
                                        Image(relatedBooks[index].image)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .shadow(radius: 5, x: 5, y: 5)
                                            .frame(width: 150, height: 200)
                                        
                                        Text(relatedBooks[index].title)
                                            .font(.caption)
                                            .multilineTextAlignment(.leading)
                                            .fixedSize(horizontal: false, vertical: true)
                                            .frame(maxWidth: 150, alignment: .leading)
                                        
                                        Text(relatedBooks[index].author)
                                            .font(.caption2)
                                            .underline()
                                            .frame(maxWidth: 100, maxHeight: .infinity, alignment: .leading)
                                    }
                                    .padding()
                                }
                            }
                        }
                    }
                    .padding(.top, 10)
                    .padding(.leading, 20)
                }
            }
            .navigationTitle(book.title)
        }
    }
}

#Preview {
    BookDetail(book: .init(title: "The Return of the King", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Concluding the story of The Hobbit, this is the final part of Tolkien’s epic masterpiece, The Lord of the Rings, featuring a striking black cover based on Tolkien’s own design, the definitive text, and a detailed map of Middle-earth. The armies of the Dark Lord Sauron are massing as his evil shadow spreads even wider. Men, Dwarves, Elves and Ents unite forces to do battle against the Dark. Meanwhile, Frodo and Sam struggle further into Mordor, guided by the treacherous creature Gollum, in their heroic quest to destroy the One Ring… JRR Tolkien’s great work of imaginative fiction has been labelled both a heroic romance and a classic fantasy fiction. By turns comic and homely, epic and diabolic, the narrative moves through countless changes of scene and character in an imaginary world which is totally convincing in its detail. Tolkien created a vast new mythology in an invented world which has proved timeless in its appeal.", image: "TROTK"))
}
