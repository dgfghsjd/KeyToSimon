//
//  KeyValueView.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/04.
//


import SwiftUI
//import EmailView
import MessageUI


struct KeyValueView: View {
    @State var result: Result<MFMailComposeResult, Error>?
    @State var selectedValue: String = "Simplicity"
    
    init() {
        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(named:"AccentColor1") as Any]
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    KeyValueListView(selectedValue: $selectedValue)
                }
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 10, trailing: 15))
                
                ScrollView {
                    KeyValueContentView(selectedValue: $selectedValue)
                }
            }
            .navigationBarTitle("Key Values", displayMode: .inline)
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
                            },
                trailing: NavigationLink(
                    destination:
                        ZStack{
                            Color("BackgroundColor")
                                .ignoresSafeArea()
                            IntroduceView("KeyWithSimon")}
                        .aspectRatio(contentMode: .fill)) {
                            Image("MyIntroduce")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: .trailing)
                                .foregroundColor(Color("AccentColor1"))
                        }
            )
            .background(Color("BackgroundColor"))
        }
        .padding(.top, 10)
        .background(Color("BackgroundColor"))
    }
}

struct KeyValueView_Previews: PreviewProvider {
    static var previews: some View {
        KeyValueView()
    }
}
