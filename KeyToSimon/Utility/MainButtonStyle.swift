//
//  MainButtonStyle.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/04.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            return configuration.label
                .font(.callout)
                .padding(.vertical, 6)
                .padding(.horizontal, 15)
                .foregroundColor(configuration.isPressed ? Color("AccentColor1") : Color("BackgroundColor"))
                .background(configuration.isPressed ? Color("BackgroundColor") : Color("AccentColor1"))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("AccentColor1"), lineWidth: 2)
                )
    }
}

struct MainButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("button pressed")
        } label: {
            Text("Button")
        }
        .buttonStyle(MainButtonStyle())
    }
}
