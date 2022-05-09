//
//  BroadPerspectiveView.swift
//  KeyToSimon
//
//  Created by SeungHwanKim on 2022/05/06.
//

import SwiftUI

struct BroadPerspectiveView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                VStack(alignment: .center, spacing: 6) {
                    Text("About Broad Perspective")
                    Text("아직 작업중 입니다")
                }
                .frame(width: 270, height: 400)
                
                VStack(spacing: 6) {
                    Text("음악은 듣는 것 뿐만 아니라 관리하는 것이다")
                        .frame(alignment: .leading)

                }
                .frame(width: 250)
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                .background(Color("AccentColor2"))
                
            }
            
        }
    }
}

struct BroadPerspectiveView_Previews: PreviewProvider {
    static var previews: some View {
        BroadPerspectiveView()
    }
}
