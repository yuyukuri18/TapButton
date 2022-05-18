//
//  RankingView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/09.
//

import SwiftUI

struct RankingView: View {
    @Binding var MovingView: Int
    @State private var ButtonModel = ButtonActionModel()
    var body: some View {
        GeometryReader(content: { rankingView in
            VStack{
                HStack{
                    Text("1st")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.156, saturation: 0.687, brightness: 0.864))
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.score1)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.name1)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                }
                HStack{
                    Text("2nd")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.978, saturation: 0.023, brightness: 0.683))
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.score2)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 5)
                    Text("\(ButtonModel.name2)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                }
                HStack{
                    Text("3rd")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.11, saturation: 0.87, brightness: 0.863))
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.score3)").frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.name3)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                }
                HStack{
                    Text("4th")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.score4)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.name4)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                }
                HStack{
                    Text("5th")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.score5)").frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                    Text("\(ButtonModel.name5)")
                        .frame(width: rankingView.size.width / 3, height: rankingView.size.height / 6)
                }
            }
        })
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView(MovingView: .constant(TitleView().MovingView))
    }
}
