//
//  ResultView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/13.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var timeViewModel: TimeHandlerViewModel
    @Binding var MovingView: Int
    @Binding var inputText: String
    
    var body: some View {
        VStack{
            Text("結果発表")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(40)
            VStack{
                HStack{
                    Text("\(timeViewModel.pName)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                    Text("さんの記録")
                        .fontWeight(.bold)
                }
                Text("\(timeViewModel.nowCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                VStack{
                    if(timeViewModel.pRank >= 1){
                        Text("junni\(timeViewModel.pRank)")
                    } else {
                        Text("ランクインならず、、、、")
                    }
                }
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(MovingView: .constant(TitleView().MovingView), inputText: .constant(TitleView().inputText))
    }
}
