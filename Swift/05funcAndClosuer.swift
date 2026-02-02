// 함수 기본형
// func 함수이름(매개변수이름:매개변수타입)->반환타입 {}

func add(num1:Int, num2:Int) -> Int {
    return num1 + num2
}
print(add(num1:4, num2:7))

func greet(person:String, withGreeting greeting:String = "Hello") -> String {
    return "\(greeting), \(person)"
}
print(greet(person:"bokhal"))                       // 기본값 설정으로 가능
print(greet(person:"bokhal", withGreeting:"Hi"))    // 내부/외부 파라미터 나뉨 


// 가변 파라미터
func sumOf(numbers:Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}
print(sumOf(numbers:1, 2, 3, 4, 5))


// 튜플 리턴
func addAndMultiply(x:Int, y:Int) -> (sum:Int, product:Int) {
    let sum = x + y
    let product = x * y
    return (sum, product)
}
let result = addAndMultiply(x:3, y:8)
print("합: \(result.sum), 곱: \(result.product)")


// 클로저 기본구조
//  { (매개변수) -> 반환타입 in
//      실행 코드
//  }

let numbers = [1, 2, 3, 4, 5]

// === === === 여기서 === === ===
let doubleNumbers1 = numbers.map { (number:Int) -> Int in
    return number * 2
}
print(doubleNumbers1)

let doubleNumbers2 = numbers.map { number in
    number * 3
}
print(doubleNumbers2)

let doubleNumbers3 = numbers.map { $0 * 4 }
print(doubleNumbers3)
// === === === 여기까지 다 같은 코드임 === === ===

func makeCounter() -> () -> Int {
    var count = 0

    return { () -> Int in
        count += 1
        return count
    }
}
let testCount = makeCounter()

for _ in 1...5 {
    print(testCount())
}

// 좀 더 이해가 필요함 


//  guard 기본구조
//  guard 조건 else {
//  조건이 거짓일 때 실행되는 코드
//  함수나 반복문을 종료하는 명령문 (return, break, continue, throw 등)
//  }

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        print("Name not found")
        return
    }
    print("Hello, \(name)!")
}

let person1 = ["name": "Alice"]
let person2 = ["age": "30"]

greet(person: person1)
greet(person: person2)

// 진짜 가드임;;
