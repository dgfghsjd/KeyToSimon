//
//  ContentView.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "keyValue"

    var body: some View {
            TabView(selection: $selectedTab) {
            KeyValueView()
                .tabItem {
                    Label("Key Values", systemImage: "key")
                }
                .tag("keyValue")
            HIGView()
                .tabItem {
                    Label("HIG", systemImage: "platter.filled.bottom.and.arrow.down.iphone")
                }
                .tag("HIG")
            SwiftUIView()
                .tabItem {
                    Label("SwiftUI", systemImage: "swift")
                }
                .tag("SwiftUI")
            BusinessView()
                .tabItem {
                    Label("Business", systemImage: "building.2.fill")
                }
                .tag("Business")
        }
        .accentColor(Color("AccentColor1"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
