//
//  Explore.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-07.
//

import SwiftUI

struct Explore: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xB7F9F5)
                    .edgesIgnoringSafeArea(.top)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        // Top 3 Books Section
                        VStack(alignment: .leading, spacing: 15) {
                            SectionHeader(icon: "medal", title: "Top 3 Books")
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    BookCategoryView(
                                        category: "Health, Fitness & Dieting",
                                        books: [
                                            "Atomic Habits: An Easy & ...",
                                            "The Psychology of Money...",
                                            "The Body Keeps the Score..."
                                        ]
                                    )
                                    
                                    BookCategoryView(
                                        category: "Religion and Spirituality",
                                        books: [
                                            "The Clear Quran Series ...",
                                            "Happy Easter, Little Critter...",
                                            "The House of My Mother ..."
                                        ]
                                    )
                                }
                                .padding(.horizontal)
                            }
                        }
                        .padding(.horizontal)
                        
                        // You May Also Like Section
                        VStack(alignment: .leading, spacing: 10) {
                            SectionHeader(icon: "hand.thumbsup.fill", title: "You may also like")
                            
                            Divider()
                            
                            VStack(spacing: 15) {
                                BookCardView(
                                    imageName: "THSIY",
                                    title: "The Holy Spirit in You",
                                    author: "Derek Prince",
                                    intro: "Derek Prince clearly explains the nature and ways of the Holy Spirit and how He works in the lives of Christians..."
                                )
                                
                                BookCardView(
                                    imageName: "TSED",
                                    title: "They Shall Expel Demons",
                                    author: "Derek Prince",
                                    intro: "What are demons? How do demons gain entry into people’s lives? Do Christians need deliverance from demons?..."
                                )
                            }
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

// Section Header
struct SectionHeader: View {
    let icon: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

// Book Category View
struct BookCategoryView: View {
    let category: String
    let books: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(category)
                .font(.headline)
                .foregroundColor(.primary)
            
            VStack(alignment: .leading, spacing: 5) {
                ForEach(books, id: \.self) { book in
                    Text(book)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 4)
    }
}

// Book Card View
struct BookCardView: View {
    let imageName: String
    let title: String
    let author: String
    let intro: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 150)
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.headline)
                
                Text("Author: \(author)")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(intro)
                    .font(.caption)
                    .lineLimit(3)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}


#Preview {
    Explore()
}
