//
//  Color.swift
//  Uber
//
//  Created by Саид-Насир Исмаилов on 2023/07/04.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let background = Color("BackgroundColor")
    let secondaryBackground = Color("SecondaryBackgroundColor")
    let primaryText = Color("PrimaryTextColor")
}
