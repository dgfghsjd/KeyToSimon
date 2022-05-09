//
//  ValueListView.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/03.
//

import SwiftUI

struct KeyValueListView: View {
    var keyValues: [String] = loadJSON(fileName: "ValueList")
    @Binding var selectedValue: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(keyValues, id: \.self) { keyValue in
                    Button {
                        selectedValue = keyValue
                    } label: {
                        Text(keyValue)
                    }
                    .buttonStyle(MainButtonStyle())
                }
                .padding(.bottom, 10)
                .padding(.top, 5)
                .padding(.horizontal, 2.5)
            }
        }
    }
}

struct KeyValueListView_Previews: PreviewProvider {
    static var previews: some View {
        KeyValueListView(selectedValue: .constant("keyValue"))
    }
}
