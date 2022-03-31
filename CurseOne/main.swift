//
//  main.swift
//  CurseOne
//
//  Created by admin on 30.03.22.
//

import Foundation

enum carTeslaErros: Error{
    case engineIsBroken
    case energyIsLeaking
}
class carTesla{
    var engine: Bool
    var energy: Int
    init(engine: Bool, energy: Int){
        self.engine = engine
        self.energy = energy
    }
    func energyState() throws{
        if energy < 10{
            throw carTeslaErros.energyIsLeaking
        }
    }
    func engineState() throws{
        if engine == false{
                throw carTeslaErros.engineIsBroken
        }
    }
}
var discovery = carTesla(engine: false, energy: 1)
do{
   try discovery.energyState()
} catch carTeslaErros.energyIsLeaking{
    print("Не хватает энергии  ")
}
do{
    try discovery.engineState()
} catch carTeslaErros.engineIsBroken{
    print("Отказал двигатель")
}



