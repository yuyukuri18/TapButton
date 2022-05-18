//
//  ButtonActionModel.swift
//  Tap_bottton
//
//  Created by cmStudent on 2022/05/11.
//

import Foundation
import SwiftUI

struct ButtonActionModel{
    var allTap = 0
    var tapScore = 0
    
    var rank = 0
    
    @AppStorage("a") var score1 = 0
    @AppStorage("b") var score2 = 0
    @AppStorage("c") var score3 = 0
    @AppStorage("d") var score4 = 0
    @AppStorage("e") var score5 = 0
    @AppStorage("po") var name1 = ""
    @AppStorage("ko") var name2 = ""
    @AppStorage("lo") var name3 = ""
    @AppStorage("mo") var name4 = ""
    @AppStorage("uo") var name5 = ""
    
    
    mutating func playerInfo(name: String, score: Int) -> Int{
        if ((score > score1 || score == score1)){
            score5 = score4
            score4 = score3
            score3 = score2
            score2 = score1
            score1 = score
            name5 = name4
            name4 = name3
            name3 = name2
            name2 = name1
            name1 = name
            rank = 1
        } else if ((score < score1 && score > score2) || score == score2){
            score5 = score4
            score4 = score3
            score3 = score2
            score2 = score
            name5 = name4
            name4 = name3
            name3 = name2
            name2 = name
            rank = 2
        } else if ((score < score2 && score > score3) || score == score3){
            score5 = score4
            score4 = score3
            score3 = score
            name5 = name4
            name4 = name3
            name3 = name
            rank = 3
        } else if ((score < score3 && score > score4) || score == score4){
            score5 = score4
            score4 = score
            name5 = name4
            name4 = name
            rank = 4
        } else if ((score < score4 && score > score5) || score == score5){
            score5 = score
            name5 = name
            rank = 5
        }
        return rank
    }
}
