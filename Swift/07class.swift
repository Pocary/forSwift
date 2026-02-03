class TestClass {
    let constant: String = "nothing"
    var variable: Int = 0
}
let test : TestClass? = .init()
// test?.constant = "text"     // 오류
test?.variable = 10         // 오류 안남 
// 이딴식으로 했을 때 test가 let이지만 오류가 안 나는 이유
// class는 참조타입이라 test는 스택에 저장되고 
// 안에있는 constant, variable은 힙에 저장됨 
//
// 근데 똑같은 형식으로 구조체를 만들면 
// 오류 남 구조체는 값타입이라 전체가 다 스택에 저장됨 



class Person {
    var name: String?
    var age: Int?

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    deinit {
        print("good bye \(name ?? "no name")")
    }
}

var p : Person? = Person(name: "bokhal", age: 22)
print(p?.name ?? "no name")
print(p?.age ?? 0)

p = nil



// 상속 
class Vehicle {
    var currentSpeed: Double = 0.0

    func description() -> String {
        return "\(currentSpeed) miles per hour"
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.currentSpeed = 15.0
bicycle.hasBasket = true
print(bicycle.description())


// Override
class Car: Vehicle {
    var gear = 1
    var speed: Double = 45

    // 프로퍼티 오버라이드
    override var currentSpeed: Double { 
        get { speed }
        set(newValue) { speed = newValue }
    }

    // 함수 오버라이드 
    override func description() -> String {
        return "car in gear \(gear), traveling at \(currentSpeed) miles per hour"
    }
}

let car = Car()
car.gear = 3
car.currentSpeed = 60.0
print(car.description())


// super 
class Bus: Vehicle {
    var passengerCount = 0

    override func description() -> String {
        return super.description() + " with \(passengerCount) passengers"
    }
}

let bus = Bus()
bus.currentSpeed = 40.0
bus.passengerCount = 15
print(bus.description())