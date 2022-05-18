//
//  BtnBackStandby.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/15.
//

import SwiftUI

struct BtnBackStandby: View {
    @Binding var MovingView: Int
    var body: some View {
        Button(action: {
            MovingView = 3
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

struct BtnBackStandby_Previews: PreviewProvider {
    static var previews: some View {
        BtnBackStandby(MovingView: .constant(TitleView().MovingView))
    }
}
