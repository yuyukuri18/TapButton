//
//  BtnNextGame.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/10.
//

import SwiftUI

struct BtnNextGame: View {
    @Binding var MovingView: Int
    var body: some View {
        VStack{
            Button(action: {
                MovingView = 5
            }) {
                Text("ゲームスタート")
                    .bold()
                Image(systemName:"chevron.right")
            }
            .frame(width: 160, height: 50)
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(15)
        }
    }
}

struct BtnNextGame_Previews: PreviewProvider {
    static var previews: some View {
        BtnNextGame(MovingView: .constant(TitleView().MovingView))
    }
}
