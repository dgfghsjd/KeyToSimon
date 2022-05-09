//
//  IntroduceView.swift
//  KeyToSimon
//
//  Created by SeungHwanKim on 2022/05/05.
//

import SwiftUI
import WebKit

struct IntroduceView: UIViewRepresentable {
    private let name: String

        init(_ name: String) {
            self.name = name
        }

        func makeUIView(context: Context) -> WKWebView {
            let webView = WKWebView()
            let url = Bundle.main.url(forResource: name, withExtension: "gif")!
            let data = try! Data(contentsOf: url)
            
            webView.load(
                data,
                mimeType: "image/gif",
                characterEncodingName: "UTF-8",
                baseURL: url.deletingLastPathComponent()
            )
            webView.scrollView.isScrollEnabled = false
            
            webView.backgroundColor = UIColor(red: 0.96, green: 0.95, blue: 0.83, alpha: 1.00)

            return webView
        }

        func updateUIView(_ uiView: WKWebView, context: Context) {
            uiView.reload()
        }
    
}

struct IntroduceView_Previews: PreviewProvider {
    static var previews: some View {
        IntroduceView("KeyValueWithMe")
    }
}
