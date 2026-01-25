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

