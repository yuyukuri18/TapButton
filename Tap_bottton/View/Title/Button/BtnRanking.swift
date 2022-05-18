//
//  BtnRanking.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/09.
//

import SwiftUI

struct BtnRanking: View {
    @ObservedObject var ViewModel = MainViewModel()
    @State var nextView = 2
    @Binding var MovingView: Int
    var body: some View {
        VStack{
            ZStack{
                Capsule()
                    .fill(Color.primary.opacity(0.1))
                if !ViewModel.isOn{
                    Text("ランキング")
                        .fontWeight(.bold)
                }
                HStack{
                    Capsule()
                        .fill(Color.red)
                        .frame(width:ViewModel.caluculateWidth() + 80)
                    Spacer()
                }
                HStack{
                    ZStack{
                        Circle()
                            .fill(ViewModel.isOn ? Color("btnStartColorS") : Color("btnStartColorE"))
                            .frame(width: 80, height: 80)
                            .onChange(of: ViewModel.isOn){ value in
                                MovingView = nextView
                            }
                        ZStack{
                            HStack(spacing:0){
                                Image(systemName: ViewModel.isOn ? "crown.fill" : "crown.fill")
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .offset(x:ViewModel.offset)
                    .gesture(DragGesture().onChanged( ViewModel.isOn ? ViewModel.onChangedOn(value:) : ViewModel.onChangedOff(value:)).onEnded(ViewModel.isOn ? ViewModel.onEndedOn(value:) : ViewModel.onEndedOff(value:)))
                    Spacer()
                }
            }
            .frame(width: ViewModel.swipeWidth, height: 80)
        }
    }
}

struct BtnRanking_Previews: PreviewProvider {
    static var previews: some View {
        BtnRanking(MovingView: .constant(TitleView().MovingView))
    }
}
