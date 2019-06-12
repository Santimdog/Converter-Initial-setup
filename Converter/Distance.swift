//
//  Distance.swift
//  Converter
//
//  Created by Enfasis on 6/11/19.
//  Copyright © 2019 Francisco Martinez. All rights reserved.
//
import UIKit
//: # Distance class
//:
class Distance {
    static let kmPerMile = 1.6
    static let mPerMie = 1609
    
    var miles:Double
    var km:Double {
        get {
            return Distance.toKm(miles: miles)
        }
        set(newKm) {
            miles = Distance.toMiles(km: newKm)
        }
    }
    init(miles:Double) {
        self.miles = miles
    }
    init(km:Double) {
        self.miles = Distance.toMiles(km: km)
    }
    static func toKm(miles:Double)->Double {
        return miles * kmPerMile
    }
    static func toMiles(km:Double)->Double {
        return km / kmPerMile
    }
}
