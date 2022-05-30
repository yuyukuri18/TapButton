//
//  GameReserveView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/09.
//

import SwiftUI

struct GameReserveView: View {
    @EnvironmentObject var timeViewModel: TimeHandlerViewModel
    @State var message = ""
    @State var editting = false
    @Binding var inputText: String
    @Binding var MovingView: Int
    var body: some View {
        VStack{
            TextFieldGameReserve(inputText: $inputText)
            HStack{
                BtnBack(MovingView: $MovingView)
                BtnSaveName(inputText: $inputText, MovingView: $MovingView)
            }
        }
    }
}

struct GameReserveView_Previews: PreviewProvider {
    static var previews: some View {
        GameReserveView(inputText: .constant(TitleView().inputText), MovingView: .constant(TitleView().MovingView))
            .environmentObject(TimeHandlerViewModel())
    }
}
