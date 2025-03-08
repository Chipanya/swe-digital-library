//
//  Profile.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-07.
//

import SwiftUI

struct Profile: View {
    @State private var showSettings = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xB7F9F5)
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    ScrollView {
                        // User Profile Pic and wallet
                        HStack(spacing: 40) {
                            VStack(spacing: 5) {
                                Image("ProfilePic")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 150, height: 150)
                                
                                Text("User Name")
                                    .font(.title)
                                
                                Text("User Email")
                                    .font(.subheadline)
                            }
                            
                            VStack {
                                Image(systemName: "wallet.bifold")
                                    .font(.system(size: 45))
                                
                                Text("$ 429.41")
                                    .font(.title2)
                            }
                            .padding(.bottom)
                        }
                        
                        // My Bookshelf
                        VStack {
                            Text("My Bookshelf")
                                .font(.title2)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                                HStack {
                                    Image("ITW")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Rectangle())
                                        .shadow(radius: 5, x: 5, y: 5)
                                        .frame(width: 80, height: 100)
                                    
                                    VStack {
                                        Image("TAA")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .shadow(radius: 5, x: 5, y: 5)
                                            .frame(width: 100, height: 150)
                                        
                                        HStack {
                                            VStack {
                                                Image(systemName: "book")
                                                    .font(.title3)
                                                Text("214/430")
                                                    .font(.caption)
                                                    .lineLimit(1)
                                                    .frame(minWidth: 50)
                                                    .layoutPriority(1)
                                            }
                                            
                                            VStack {
                                                ProgressView(value: 0.51)
                                                    .progressViewStyle(.linear)
                                                    .frame(width: 50, height: 8)
                                                    .tint(.green)
                                                
                                                Text("51%")
                                                    .font(.caption)
                                            }
                                        }
                                    }
                                    
                                    ScrollView(.vertical, showsIndicators: true) {
                                        VStack(alignment: .leading, spacing: 3) {
                                            Text("Author: James Kent")
                                                .font(.caption)
                                                .fontWeight(.bold)

                                            Text("Overview: Experiencing a recurring pattern of anxious thoughts or becoming gripped by worry over a sudden difficult situation can feel overwhelming. But you don’t have to stay under the control of your anxiety. You can create a specific plan to relieve your anxiety and stress—one that is just right for you. It’s what father-and-son authors Ronnie Kent (a medical doctor and behavioral specialist) and James Kent (a therapist) call The Anxiety Algorithm. It is based on Philippians 4:8 in the Bible and is supported by other passages of Scripture and trusted counseling techniques.")
                                                .font(.caption2)
                                                .multilineTextAlignment(.leading)
                                        }
                                        .frame(width: 200) // Ensure text doesn’t stretch too wide
                                        .frame(minHeight: 80) // Allow ScrollView to function properly
                                    }
                                }
                            .alignmentGuide(.leading) {
                                _ in 0
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        
                        // My Book
                        VStack {
                            Text("My Book")
                                .font(.title2)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(0..<myBook.count, id: \.self) { index in
                                        Image(myBook[index].image)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .shadow(radius: 5, x: 5, y: 5)
                                            .frame(width: 100, height: 150)
                                    }
                                }
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        
                        // My Collection
                        VStack {
                            Text("My Collection")
                                .font(.title2)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(0..<myCollection.count, id: \.self) { index in
                                        Image(myCollection[index].image)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .shadow(radius: 5, x: 5, y: 5)
                                            .frame(width: 100, height: 150)
                                    }
                                }
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 20)
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button(action: {
                            withAnimation(.easeInOut) {
                                showSettings.toggle()
                            }
                        }) {
                            Image(systemName: "gearshape")
                        }
                    })
                })
            }
        }
    }
}

#Preview {
    Profile()
}
