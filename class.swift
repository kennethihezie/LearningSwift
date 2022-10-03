class Car {
    var model = "bmw"
    var name: String

    init(name: String) {
        self.name = name
    }

    func changeModel(model: String) -> String{
        self.model = model
        return model
    }
}

class Bmw : Car {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        model = "Bmw"
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func changeModel(model: String) -> String {
        return "Car model is: \(model)"
    }
}

var car = Car(name: "BMW")
print(car.model)
print(car.model)
print(car.changeModel(model: "Benz"))


var bmw = Bmw(sideLength: 5.2, name: "BMW")
print(bmw.area())
print(bmw.changeModel(model: "BENZ"))
