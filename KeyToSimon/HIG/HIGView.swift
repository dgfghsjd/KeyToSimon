//
//  HIGView.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/03.
//

import SwiftUI
import MessageUI

struct HIGView: View {
    @State var result: Result<MFMailComposeResult, Error>?
    
    var body: some View {
        NavigationView {
            VStack{
                Color("BackgroundColor")
                    .ignoresSafeArea()
                    .frame(width: 0.5, height: 0.5)
                ScrollView{
                    ZStack{
                        Color("BackgroundColor")
                            .ignoresSafeArea()
                        Text("About HIG")
                    }}}
            .background(Color("BackgroundColor"))
            .listStyle(.plain)
            .navigationBarTitle("HIG", displayMode: .inline)
            .navigationBarItems(
                leading: NavigationLink(
                    destination:
                        ZStack{
                            Color("BackgroundColor")
                                .ignoresSafeArea()
                            EmailView(
                                result: $result,
                                recipients: ["dgfghsjd@gmail.com"],
                                subject: "",
                                body: "",
                                attachements: []
                            )}) {
                                Image(systemName: "envelope.open.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .trailing)
                                    .foregroundColor(Color("AccentColor1"))
                            }
            )
        }
        .padding(.top, 10)
        .background(Color("BackgroundColor"))
    }
    
}

struct HIGView_Previews: PreviewProvider {
    static var previews: some View {
        HIGView()
    }
}
