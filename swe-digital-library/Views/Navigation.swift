//
//  Navigation.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-05.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                Home()
            }
            Tab("Explore", systemImage: "safari") {
                Explore()
            }
            Tab("Library", systemImage: "book.closed") {
                Library()
            }
            Tab("Profile", systemImage: "person") {
                Profile()
            }
        }
    }
}

#Preview {
    Navigation()
}
