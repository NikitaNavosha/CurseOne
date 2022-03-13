//
//  main.swift
//  CurseOne
//
//  Created by admin on 20.01.22.
//

import Foundation

enum engineState {
    case start
    case stop
}
enum trunkState{
    case trunkIsFull
    case TrunkIsEmpty
}
class Car{
    var brand: String
    var release: Int
    init(brand: String, release: Int){
        self.brand = brand
        self.release = release
    }
}
class trunkCar: Car{
    var trunk: trunkState
    init(brand: String, release: Int, trunk: trunkState){
        self.trunk = trunk
        super.init(brand: brand, release: release)
    }
    func trunkState(){
        if trunk == .trunkIsFull {
            print("Багажник полон")
        } else{
            print("Багажник пуст")
        }
    }
}
class sportCar: Car{
    var goFast: engineState
    init(brand: String, release: Int, goFast: engineState){
        self.goFast = goFast
        super.init(brand: brand, release: release)
    }
    func engineState(){
        if goFast == .start {
            print("Спортивная машина едет")
        } else{
            print("Спортивная машина не едет")
        }
    }
}
let gazel = trunkCar(brand: "Lamborgini", release: 2033, trunk: .trunkIsFull)
gazel.trunkState()
let mitsubisi = sportCar(brand: "Lada", release: 2001, goFast: .start)
mitsubisi.engineState()
