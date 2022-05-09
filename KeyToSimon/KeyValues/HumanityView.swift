//
//  HumanityView.swift
//  KeyToSimon
//
//  Created by SeungHwanKim on 2022/05/06.
//

import SwiftUI

struct HumanityView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                VStack(alignment: .center, spacing: 6) {
                    Text("About Humanity")
                    Text("아직 작업중 입니다")
                }
                .frame(width: 270, height: 400)
                
                VStack(spacing: 6) {
                    Text("현실에 꼭 최첨단 기술이 필요한 것이 아니다. 그들은 경쟁사와 달리 기계로서의 기능이나 특성이 아닌 소비자와의 감성적 관계도 고려했다.")
                        .frame(alignment: .leading)
                    Text("- 애플처럼 디자인하라, John Edson")
                        .frame(alignment: .trailing)

                }
                .frame(width: 250)
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                .background(Color("AccentColor2"))
                
            }
            
        }
    }
}

struct HumanityView_Previews: PreviewProvider {
    static var previews: some View {
        HumanityView()
    }
}
