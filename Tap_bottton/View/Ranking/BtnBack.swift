//
//  BtnBack.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/18.
//

import SwiftUI

struct BtnBack: View {
    var body: some View {
        @EnvironmentObject var timeViewModel: TimeHandlerViewModel
        @Binding var MovingView: Int
        var body: some View {
            Button(action: {
                MovingView = 0
            }) {
                Image(systemName:"chevron.left")
                Text("戻る")
                    .bold()
            }
            .frame(width: 100, height: 50)
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(15)
        }
    }
}

struct BtnBack_Previews: PreviewProvider {
    static var previews: some View {
        BtnBack()
    }
}
