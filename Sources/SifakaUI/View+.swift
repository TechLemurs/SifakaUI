//
//  View+.swift
//  SifakaUI
//
//  Created by Daniel Leuck on 2022/08/02.
//

import SwiftUI

public extension View {
    
    /**
     Convenience method for creating a horizontal spacer
     */
    func hspace(_ size: Double) -> some View { Spacer().frame(width: size) }
    
    /**
     Convenience method for creating a vertical spacer
     */
    func vspace(_ size: Double) -> some View { Spacer().frame(height: size) }
}




