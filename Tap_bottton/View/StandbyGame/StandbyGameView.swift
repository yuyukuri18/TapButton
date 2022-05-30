//
//  StandbyGameView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/10.
//

import SwiftUI

struct StandbyGameView: View {
    @Binding var MovingView: Int
    var body: some View {
        VStack{
            Text("「TAP」と書かれたボタンを\nすばやくタップしよう！")
                .fontWeight(.bold)
                .fontWeight(.regular)
                .foregroundColor(Color.black)
            HStack{
                BtnBackStandby(MovingView: $MovingView)
                BtnNextGame(MovingView: $MovingView)
            }
        }
    }
}

struct StandbyGameView_Previews: PreviewProvider {
    static var previews: some View {
        StandbyGameView(MovingView: .constant(TitleView().MovingView))
            .environmentObject(TimeHandlerViewModel())
    }
}
