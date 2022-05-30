//
//  TextFildGameReserve.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/10.
//

import SwiftUI

struct TextFieldGameReserve: View {
    @EnvironmentObject var timeViewModel: TimeHandlerViewModel
    @Binding var inputText: String
    @State var message = ""
    @State var editting = false
    var body: some View {
        TextField("ニックネームを入力してください", text: $inputText,onEditingChanged: { begin in
            if begin {
                self.editting = true
                self.message = ""
            }else{
                self.editting = false
            }
        })
            .frame(width:340.0, height: 300.0)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .keyboardType(.namePhonePad)
    }
}

struct TextFieldGameReserve_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldGameReserve(inputText: .constant(""))
            .environmentObject(TimeHandlerViewModel())
    }
}
