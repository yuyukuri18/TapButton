//
//  TitleView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/09.
//

import SwiftUI

struct TitleView: View {
    @EnvironmentObject var timeViewModel: TimeHandlerViewModel
    @State var inputText: String = "名無し"
    @State var MovingView: Int = 0
    var body: some View {
        GeometryReader(content: { mainView in
            ZStack{
                Color("BackColor")
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                ZStack{
                    VStack{
                        if(MovingView == 0){
                        Image("TitleImage")
                            .resizable()
                            .scaledToFit()
                        }
                        VStack(content: {
                            if(MovingView == 0){
                            Text("MENU")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                                .padding(40)
                            Text("アイコンをスワイプ＞＞＞")
                                BtnGameStart(MovingView: $MovingView)
                                    .padding(20)
                                BtnSetting(MovingView: $MovingView)
                                    .padding(20)
                                BtnRanking(MovingView: $MovingView)
                                    .padding(30)
                            } else if(MovingView == 1){
                                SettingView(MovingView: $MovingView)
                            } else if(MovingView == 2){
                                RankingView(MovingView: $MovingView)
                            } else if(MovingView == 3){
                                GameReserveView(inputText: $inputText, MovingView: $MovingView)
                                    .environmentObject(timeViewModel)
                            } else if(MovingView == 4){
                                StandbyGameView(MovingView: $MovingView)
                                    .environmentObject(timeViewModel)
                            } else if(MovingView == 5){
                                TapGameView(MovingView: $MovingView, inputText: $inputText)
                                    .environmentObject(timeViewModel)
                            } else if(MovingView == 6){
                                ResultView(MovingView: $MovingView, inputText: $inputText)
                                    .environmentObject(timeViewModel)
                            }
                        })
                            .frame(width: mainView.size.width - 50, height: mainView.size.height - 150)
                            .background(Color("BackColor")
                                            .cornerRadius(50)
                                            .opacity(0.4)
                                        
                            )
                    }
                }
            }
        })
    }
}


struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .environmentObject(TimeHandlerViewModel())
    }
}
