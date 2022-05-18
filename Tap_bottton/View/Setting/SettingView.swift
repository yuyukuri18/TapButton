//
//  SettingView.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/09.
//

import SwiftUI

struct SettingView: View {
    @State var isBgmOn = true
    @State var isSeOn = true
    @State var allTap = "true"
    @State var isStatuBa = true
    @Binding var MovingView: Int
    //@State var backColor = Color.white

    var body: some View {
        NavigationView{
            Form{
                Button(action: {
                    MovingView = 0
                }){
                    Text("ホームに戻る")
                }
                Section(header: Text("サウンド設定")){
                    Toggle(isOn: $isBgmOn, label:{
                        Text("BGM")
                        Image(systemName: isBgmOn ? "speaker.wave.3" : "speaker.slash")
                    })
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
                    
                    Toggle(isOn: $isSeOn, label:{
                        Text("SE    ")
                        Image(systemName: isSeOn ? "speaker.wave.3.fill" : "speaker.slash.fill")
                    })
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
                }
                Section(header: Text("")){
                    Text("累計タップ回数.......\(allTap)")
                }
                
                Section(header: Text("ディスプレイ設定")){
                    Toggle(isOn: $isStatuBa, label:{
                        Text("ステータスバーの表示")
                    })
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
                    
                    //ColorPicker("背景色を選択する",selection: $backColor)
                }
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(/*backColor: .white*/MovingView: .constant(TitleView().MovingView))
    }
}
