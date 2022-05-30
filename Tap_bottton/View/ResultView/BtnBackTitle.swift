//
//  BtnBackTitle.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/18.
//

import SwiftUI

struct BtnBackTitle: View {
    @Binding var MovingView: Int
    var body: some View {
        Button(action: {
            MovingView = 0
        }) {
            Text("タイトルへ")
                .bold()
            Image(systemName:"chevron.right")

        }
        .frame(width: 140, height: 50)
        .foregroundColor(Color.white)
        .background(Color.purple)
        .cornerRadius(15)
    }
}

struct BtnBackTitle_Previews: PreviewProvider {
    static var previews: some View {
        BtnBackTitle(MovingView: .constant(TitleView().MovingView))
    }
}
