// 구조체는 값 타입이라 깊은복사

struct Person {
    var name: String
    var age: Int
}

let p = Person(name: "bokhal", age: 30)
print(p.name)
print(p.age)


struct Rectangle {
    var width: Double
    var height: Double
    var area: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        self.area = width * height
    }
}

let rec = Rectangle(width: 64.2, height: 131.5)
print("Width: \(rec.width)mm, Height: \(rec.height)mm, Area: \(rec.area)mm")

struct Triangel {
    var base: Double
    var height: Double

    var area: Double {  // 계산 속성
        get {
            return base * height / 2
        } 
        set {           // 새로운 값이 들어올 때마다 재계산 
            height = 2 * newValue / base
        }
    }
}

var tri = Triangel(base: 5.0, height: 12.0)
print("Area: \(tri.area)")

tri.area = 30.0         // 속성 변경 가능 
print("New Height: \(tri.height)")


// 인스턴스 메서드 
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }

    mutating func reset() {
        count = 0
    }
}

var counter = Counter()
counter.increment()
print(counter.count)
counter.increment()
print(counter.count)
counter.reset()
print(counter.count)


// 타입 메서드 
struct Math {
    static func square(_ number: Int) ->  Int {
        return number * number
    }
}

let result = Math.square(5)
print(result)


// Extension
struct Circle {
    var radius = 0.0
}

extension Circle {
    var diameter: Double {
        return radius * 2
    }
}

let circle = Circle(radius: 5.0)
print(circle.diameter)