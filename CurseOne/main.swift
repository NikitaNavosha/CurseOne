//
//  main.swift
//  CurseOne
//
//  Created by admin on 23.02.22.
//

import Foundation

enum windows{
    case open
    case closed
}
enum engine{
    case start
    case off
}
enum gas{
    case gasOn
    case gasOff
}
enum trunk{
    case trunkIsFull
    case TrunkIsEmpty
}
protocol Car {
    var brand: String {get}
    var release: Int {get}
    var engineState: engine {get set}
    var windowsState: windows {get set}
}
extension Car {
    mutating func changeEngineState(engineState: engine){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: windows){
        self.windowsState = windowsState
    }
}
class basicCar: Car{
    var brand: String
    var release: Int
    var engineState: engine = .off
    var windowsState: windows = .closed
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
}
class sportCar: basicCar, CustomStringConvertible{
    var gasState: gas = .gasOff
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), gas is \(gasState), release date is \(release)"
    }
}
class trunkCar: basicCar, CustomStringConvertible{
    var trunkState: trunk = .TrunkIsEmpty
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), trunk is \(trunkState), release date is \(release)"
    }
}
var lamborigni = sportCar(brand: "Lamborgini", release: 2033)
var lada = trunkCar(brand: "Lada", release: 2001)
lamborigni.changeEngineState(engineState: .start)
lamborigni.gasState = .gasOn
lada.chageWindowsState(windowsState: .open)
lada.trunkState = .trunkIsFull
print(lamborigni.description)
print(lada.description)
