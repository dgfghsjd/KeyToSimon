//
//  KeyValueContentView.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/04.
//

import SwiftUI

struct KeyValueContentView: View {
    @Binding var selectedValue: String
    
    var body: some View {
        switch selectedValue
        {
        case "Big Idea":
            BigIdeaView()
        case "Humanity":
            HumanityView()
        case "Broad Perspective":
            BroadPerspectiveView()
        case "Connection":
            ConnectionView()
        default:
            SimplicityView()
        }
    }
}

struct KeyValueContentView_Previews: PreviewProvider {
    static var previews: some View {
        KeyValueContentView(selectedValue: .constant("Simplicity"))
    }
}


