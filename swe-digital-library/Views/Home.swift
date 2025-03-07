//
//  Home.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-05.
//

import SwiftUI

struct Home: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xB7F9F5)
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    
                    SearchBar(searchText: $searchText)
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 25) {
                            ForEach(0..<sampleBooks.count, id: \.self) { index in
                                VStack {
                                    Image(sampleBooks[index].image)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .shadow(radius: 5, x: 5, y: 5)
                                        .frame(width: UIScreen.main.bounds.width - 100, height: 320)
                                        .scrollTransition { content, phase in
                                            content
                                                .opacity(phase.isIdentity ? 1 : 0.5)
                                                .scaleEffect(y: phase.isIdentity ? 1 : 0.7)
                                        }
                                    
                                    Text(sampleBooks[index].title)
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 120)
                                    
                                    ScrollView {
                                        Text(sampleBooks[index].description)
                                            .font(.subheadline)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 280)
                                    }
                                    
                                    Button("Add To Library") {
                                        
                                    }
                                    .buttonStyle(.bordered)
                                    .foregroundStyle(.white)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .padding()
                                }
                            }
                        }
                        .scrollTargetLayout()
                    }
                    .contentMargins(50, for: .scrollContent)
                    .scrollTargetBehavior(.viewAligned)
                }
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading, content: {
                        Text("Home")
                            .font(.title2).fontWeight(.bold)
                    })
                    
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button("Notification", systemImage: "bell") {
                            
                        }
                    })
                })
            }
        }
    }
}

#Preview {
    Home()
}
