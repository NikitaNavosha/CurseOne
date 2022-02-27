//
//  main.swift
//  CurseOne
//
//  Created by admin on 20.01.22.
//


import Foundation
import Cocoa

enum engineState {
    case start, stop
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

struct someCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "green":
            self.color = "green"
        case "yellow":
            self.color = "yellow"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand)\(model) trunk free: \(space)")
            } else { print("Input error or \(brand)\(model) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brand)\(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) windows are open")
            } else { print("\(brand)\(model) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) trunck is empty")
    }
}

struct someTruck {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "green":
            self.color = "green"
        case "yellow":
            self.color = "yellow"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var bodyVolume : Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print ("\(brand)\(model) trunk free: \(space)")
            } else { print("Input error or \(brand)\(model) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brand)\(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) windows are open")
            } else { print("\(brand)\(model) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) trunck is empty")
    }
}

var car1 = someCar(brand: "Lamborgini", model: "Z2", color: "clear", release: 2033, trunkVolume: 180.0 , engineState: .stop, windowState: .open, trunkState: .empty)
var car2 = someCar(brand: "Lada", model: "Kalina", color: "clear", release: 2001, trunkVolume: 280.0, engineState: .stop, windowState: .close, trunkState: .full)

var truck1 = someTruck(brand: "Mercedes", model: "Blatnoy", color: "clear", release: 1991, bodyVolume: 750000.0, engineState: .start, windowState: .open, trunkState: .full)
var truck2 = someTruck(brand: "BMW", model: "Bumer", color: "clear", release: 1993, bodyVolume: 100000.0, engineState: .start, windowState: .close, trunkState: .empty)


car1.engineState = .start
car1.trunkVolume = 340.0
car1.changeColor(c: "red")
car2.trunkVolume = 890.0
car2.emptyTrunck()
car2.trunkVolume = 80.9
car2.windowState = .open
car2.changeColor(c: "black")

truck1.engineState = .stop
truck1.windowState = .close
truck2.engineState = .stop
truck2.bodyVolume = 5678908


print ("Information about the first car: brand&model: \(car1.brand)\(car1.model), release: \(car1.release), color: \(String(describing: car1.color)), free trunkVolume: \(car1.trunkVolume), engine is \(car1.engineState)")

