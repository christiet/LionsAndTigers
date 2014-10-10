//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Tony Christie on 29/09/2014.
//  Copyright (c) 2014 Spire. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("\(name): Chuff Chuff")
    }
    
    func chuffANumberOfTimes(numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                    chuff()
            } else {
                println("\(name): purr purr")
            }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge: Int) -> Int {
        return regularAge * 3
    }
    
    func randomfact() -> String {
        let randomNumber = Int(arc4random_uniform(3))
        var randomFact: String
        
        switch randomNumber {
        case 0:
            randomFact = "The tiger is big"
        case 1:
            randomFact = "The tiger is long"
        default:
            randomFact = "Lots of tigers are an 'ambush' or a 'streak'"
        }
//        if randomNumber == 0 {
//            randomFact = "The tiger is big"
//        } else if randomNumber == 1 {
//            randomFact = "The tiger is long"
//        } else {
//            randomFact = "Lots of tigers are an 'ambush' or a 'streak'"
//        }
        
        return randomFact
    }
}