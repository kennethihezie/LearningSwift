class Car {
    var model = "bmw"

    func changeModel(model: String){
        self.model = model
    }
}

var car = Car()
print(car.model)
car.changeModel(model: "Benz")
print(car.model)