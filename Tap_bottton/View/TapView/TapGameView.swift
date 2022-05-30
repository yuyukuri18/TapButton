//
//  TapGameView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/11.
//

import SwiftUI

import SwiftUI
import SwiftUI
import Combine


struct TapGameView: View {
    @EnvironmentObject var timeViewModel: TimeHandlerViewModel
    @Binding var MovingView: Int
    @Binding var inputText: String
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Text("\(inputText)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.837, brightness: 0.98))
                Text("さんのスコア")
            }
            HStack{
                Text("\(self.timeViewModel.nowCount)")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.837, brightness: 0.98))
                    .font(.largeTitle)
                
                    .fontWeight(.bold)
                    .onChange(of: timeViewModel.count){value in
                        if timeViewModel.timerValue - timeViewModel.count == 0{
                            MovingView = 6
                            timeViewModel.insertPlayer(n: inputText, c: timeViewModel.nowCount)
                        }
                    }
                Text("回")
            }
            Spacer()
            HStack{
                Text("残り")
                Text("\(timeViewModel.timerValue - timeViewModel.count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.837, brightness: 0.98))
                Text("秒")
            }
            Button(action: {
                timeViewModel.BtnAction()
                timeViewModel.startTimer()
            }){
                Text("TAP")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .frame(width: 180.0, height: 180.0)
                    .background(Color(.red))
                    .clipShape(Circle())
            }
            
            if(timeViewModel.nowCount == 0){
                Text("タップするとカウントダウンが始まるよ")
                    .foregroundColor(Color.black)
                    .opacity(0.5)
            } else{
                Text("")
            }
            Spacer()
        }
    }
}

struct TapGameView_Previews: PreviewProvider {
    static var previews: some View {
        TapGameView(MovingView: .constant(TitleView().MovingView), inputText: .constant(TitleView().inputText))
            .environmentObject(TimeHandlerViewModel())
    }
}
