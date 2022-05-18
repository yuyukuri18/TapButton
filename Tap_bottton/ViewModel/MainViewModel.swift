//
//  MainViewModel.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/11.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var isOn = false
    @Published var swipeWidth = UIScreen.main.bounds.width - 100
    @Published var offset : CGFloat = 0
    
    func caluculateWidth() -> CGFloat{
        let percent = offset / swipeWidth
        return percent * swipeWidth
    }
    
    func onChangedOff(value: DragGesture.Value){
        if value.translation.width > 0 && offset <= swipeWidth - 80{
            offset = value.translation.width
        }
    }
    
    func onChangedOn(value: DragGesture.Value){
        offset =  (swipeWidth - 80) + value.translation.width
    }
    
    func onEndedOff(value: DragGesture.Value){
        withAnimation(Animation.easeOut(duration: 0.5 )){
            if offset > 100 {
                offset = swipeWidth - 80
                isOn = true
            }else{
                offset = 0
            }
        }
    }
    
    func onEndedOn(value: DragGesture.Value){
        withAnimation(Animation.easeOut(duration: 0.5 )){
            if offset < 80 {
                offset = 0
                isOn = false
            }else{
                offset = swipeWidth - 80
            }
        }
    }
}
