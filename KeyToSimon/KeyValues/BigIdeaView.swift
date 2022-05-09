//
//  BigIdeaView.swift
//  KeyToSimon
//
//  Created by SeungHwanKim on 2022/05/06.
//

import SwiftUI

struct BigIdeaView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                VStack(alignment: .center, spacing: 6) {
                    Text("About Big Idea")
                    Text("아직 작업중 입니다")
                }
                .frame(width: 270, height: 400)
                
                VStack(spacing: 6) {
                    Text(" ")
                        .frame(alignment: .leading)
                    Text(" ")
                        .frame(alignment: .trailing)

                }
                .frame(width: 250)
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                .background(Color("AccentColor2"))
                
            }
            
        }
    }
}

struct BigIdeaView_Previews: PreviewProvider {
    static var previews: some View {
        BigIdeaView()
    }
}
