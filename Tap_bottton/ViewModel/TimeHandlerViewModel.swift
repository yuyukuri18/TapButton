//
//  ButtonActionViewModel.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/11.
//

import SwiftUI

class TimeHandlerViewModel: ObservableObject {
    @Published var timerHandler : Timer?
    @Published var count = 0
    @Published var nowCount = 0
    @Published var timerValue = 10
    @Published var isShowAlert = false
    @Published var isNilAlert = false
    @Published var isMoreAlert = false
    @Published var allTap = 0
    @Published var pRank = 0
    @Published var pName = ""
    @Published var pScore = 0
    
    private var ButtonModel = ButtonActionModel()
    
    func BtnAction(){
        allTap += 1
        nowCount += 1
        startTimer()
    }
    
    func downTimer() {
        count += 1
        if (timerValue - count <= 0){
            timerHandler?.invalidate()
            isShowAlert = true
        }
    }
    
    func insertPlayer(n: String, c: Int){
        pName = n
        pScore = c
        pRank = ButtonModel.playerInfo(name: pName, score: pScore)
    }
    
    func startTimer(){
        if let unwrapedTimerHandler = timerHandler {
            if unwrapedTimerHandler.isValid == true {
                return
            }
        }
        if timerValue - count <= 0 {
            count = 0
        }
        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in self.downTimer()
        }
    }
    
    func reset(){
        count = 0
        nowCount = 0
        pRank = 0
        pName = ""
        pScore = 0
    }
}

