//
//  SimplicityView.swift
//  KeyToSimon
//
//  Created by SeungHwanKim on 2022/05/06.
//

import SwiftUI

struct SimplicityView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                VStack(alignment: .center, spacing: 6) {
                    Text("Simple can be harder than complex: you have to work hard to get your thinking clean to make it simple.But it's worth it in the end because once you get there, you can move mountains. ")
                    Text("- Steve Jobs, 1998 -")
                }
                .frame(width: 270, height: 400)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("브랜드의 마케팅으로 경쟁우위를 가지려하지 말고 제품의 품질로 경쟁우위를 가져가자")
                }
                .frame(width: 250)
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                .background(Color("AccentColor2"))
                
            }
            
        }
    }
}

struct SimplicityView_Previews: PreviewProvider {
    static var previews: some View {
        SimplicityView()
    }
}
