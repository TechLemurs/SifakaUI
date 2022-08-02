//
//  Color+.swift
//  SifakaUI
//
//  Created by Daniel Leuck on 2022/08/02.
//

import SwiftUI

public extension Color {
    
    /**
     Create an RGB or RGBA color using the familiar 0-255 params.
     */
    static func rgb(_ r: Double, _ g: Double, _ b: Double, alpha: Double = 255) -> Color {
        return Color(red: r / 255, green: g / 255, blue: b / 255, opacity: alpha / 255)
    }
}

