//
//  BtnSaveName.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/10.
//

import SwiftUI

struct BtnSaveName: View {
    @EnvironmentObject var timeViewModel: TimeHandlerViewModel
    @Binding var inputText: String
    @Binding var MovingView: Int
    @State var maxCharacterLength = 8
    var body: some View {
        Button(action: {
            if (inputText.count == 0){
                timeViewModel.isNilAlert = true
            } else if (maxCharacterLength < inputText.count){
                timeViewModel.isMoreAlert = true
            } else {
                MovingView = 4
            }
        }) {
            Text("決定")
                .bold()
            Image(systemName:"chevron.right")
        }
        .frame(width: 100, height: 50)
        .foregroundColor(Color.white)
        .background(Color.purple)
        .cornerRadius(15)
        .alert(isPresented: $timeViewModel.isNilAlert) {
            Alert(title: Text("名前を入力してください"),
                  dismissButton: .default(Text("了解")))  // ボタンの変更
        }
    }
}

struct BtnSaveName_Previews: PreviewProvider {
    static var previews: some View {
        BtnSaveName(inputText: .constant(TitleView().inputText), MovingView: .constant(TitleView().MovingView))
    }
}
