//
//  Color.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-05.
//

import Foundation
import SwiftUICore

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
