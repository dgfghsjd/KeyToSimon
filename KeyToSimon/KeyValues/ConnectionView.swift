//
//  ConnectionView.swift
//  KeyToSimon
//
//  Created by SeungHwanKim on 2022/05/06.
//

import SwiftUI

struct ConnectionView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                VStack(alignment: .center, spacing: 6) {
                    Text("About Connection")
                    Text("아직 작업중 입니다")
                }
                .frame(width: 270, height: 400)
                
                VStack(spacing: 6) {
                    Text("아이팟이 등장하면서 빼놓을 수 없는 디자인 identity는 바로 흰색 이어폰이다. 사실 당시 이어폰을 흰색으로 정한 것은 플레이어와 단순히 색상을 통일시키려던 의도의 결과이다")
                        .frame(alignment: .leading)
                    Text(" - LeanderKahney,2005")
                        .frame(alignment: .trailing)

                }
                .frame(width: 250)
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                .background(Color("AccentColor2"))
                
            }
            
        }
    }
}

struct ConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionView()
    }
}
