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



// 참조 
class Pet {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let p1 = Pet(name: "Albatross")
let p2 = p1

print(p1.name)
print(p2.name)

p2.name = "Bomm" 

print(p1.name)
print(p2.name)
// 주소 참조라서 둘 다 같이 바뀜 
// 클래스 인스턴스가 동일한 인스턴스를 참조하는지 확인할 수 있음
// === 이딴 싸가지없는 문법을 통해.

let p3 = Pet(name: "CherryBlossom")
let p4 = p3
let p5 = Pet(name: "CherryBlossom")

if p3 === p4 {  // 그냥 참조가 같음 
    print("p3, p4 refer to the same instance")      // O 
} else {
    print("p3, p4 refer to different instance")     // X
}

if p3 === p5 {  // 값이 같아도 참조가 다름 
    print("p3, p5 refer to the same instance")      // X
} else {
    print("p3, p5 refer to different instance")     // O
}



// Strong Reference Cycle 
class myPet: Pet {
    weak var friend: myPet?

}

let alice = myPet(name: "Alice")
let bob = myPet(name: "Bob")

alice.friend = bob
bob.friend = alice
// 서로 참조하고있음  강한 참조 사이클 형성 
// 나약의 포션 던져주면 됨 
// weak 맞은 녀석은 참조하고있던 인스턴스가 해제되면 nil로 변함
// 
// unowned라는것도 있는데 잘 안씀
// Objective-C의 유산
// 이건 참조하고 있는 인스턴스가 절대 해제될 일이 없다는걸 명시하는건데 
// 만약 해제되면 런타임 에러 남 