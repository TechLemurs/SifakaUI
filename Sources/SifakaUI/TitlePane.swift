//
//  TitlePane.swift
//
//  Created by Daniel Leuck on 2022/08/05.
//

import SwiftUI

/**
 A container view with a configurable title bar along the top.
 */
public struct TitlePane<C: View> : View {
    
    let title: String
    let titleForeground: Color
    let titleBackground: Color
    let titleAlignment: Alignment
    let childView: C
    
    public init(_ title: String, titleForeground: Color = .white, titleBackground: Color = .purple,
                titleAlignment: Alignment = .leading, childView: () -> C) {
        self.title = title
        self.titleForeground = titleForeground
        self.titleBackground = titleBackground
        self.titleAlignment = titleAlignment
        self.childView = childView()
    }
    
    public var body: some View {
        VStack {
            Text(title)
                .frame(minWidth: 50, idealWidth: 100, maxWidth: .infinity, alignment: titleAlignment)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(titleForeground)
                .padding(5)
                .background(titleBackground)

            childView
        }.frame(maxHeight: .infinity, alignment: .topLeading)
    }
}

