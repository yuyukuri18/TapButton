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
                .foregroundColor(Color.blue.opacity(0.7))
                .padding(40)
            VStack{
                if(timeViewModel.pRank >= 1){
                    Text("歴代\(timeViewModel.pRank)位")
                        .font(.largeTitle)
                        .foregroundColor(Color.red.opacity(0.4))
                } else {
                    Text("ランクインならず、、、、")
                }
                HStack{
                    Text("\(timeViewModel.pName)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue.opacity(0.7))
                    Text("さんの記録")
                        .fontWeight(.bold)
                }
                Spacer()
                HStack{
                    Text("\(timeViewModel.nowCount)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue.opacity(0.7))
                    Text("回")
                }
                Spacer()
                VStack{
                    BtnBackTitle(MovingView: $MovingView)
                }
                Spacer()
            }
        }
        .alert(isPresented: $timeViewModel.isShowAlert) {
            Alert(title: Text("終了！"),
                  dismissButton: .default(Text("OK")))
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(MovingView: .constant(TitleView().MovingView), inputText: .constant(TitleView().inputText))
            .environmentObject(TimeHandlerViewModel())
    }
}
