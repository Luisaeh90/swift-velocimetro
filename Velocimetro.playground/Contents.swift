import UIKit

var str = "Velocimetro"

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades

    init () {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        var velocidadEnCadena = ""
        var actual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadEnCadena = "Velocidad baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadEnCadena = "Velocidad media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadEnCadena = "Velocidad alta"
            velocidad = .VelocidadMedia
        }
        
        return (actual, velocidadEnCadena)
    }
}

var auto = Auto()

for _ in 1...20 {
    var tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}
