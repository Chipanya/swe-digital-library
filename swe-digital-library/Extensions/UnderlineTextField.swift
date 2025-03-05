//
//  UnderlineTextField.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-05.
//

import Foundation
import SwiftUICore

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundStyle(.blue)
            .padding(10)
    }
}
