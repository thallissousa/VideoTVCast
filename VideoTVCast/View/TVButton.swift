//
//  VideoButton.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import SwiftUI

struct TVButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        TVButton(configuration: configuration)
    }
}

struct TVButton: View {
    @Environment(\.isFocused) var focused: Bool
    
    let configuration: ButtonStyle.Configuration
    
    var body: some View {
        configuration.label
            .scaleEffect(focused ? 1.3: 1) //scale effect - se for true, ficará com scale de 1.3; se for false, ficará com scale de 1
            .focusable(true)
    }
}
