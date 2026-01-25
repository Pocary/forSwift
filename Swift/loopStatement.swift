// for 

// 기본형 
for num in 1...5 {
    print(num)
}


// 배열 순회 
let fruits = ["Apple", "Banana","Cherry", "DragonFruit"]
for fruit in fruits {
    print(fruit)
}
// 인덱스와 함께 출력도 가능
for (index, fruit) in fruits.enumerated() {
    print("\(index + 1)번째 과일은 \(fruit)입니다.")
}


// 딕셔너리 순회
let capitals = ["Korea":"Seoul", "Japan":"Tokyo", "USA":"Washington, D.C."]
for (country, capital) in capitals {
    print("\(country)의 수도는 \(capital)입니다.")
}


// 충격.실화. for에도 where이 들어간다 ! 
let arr = [1, 2, 3, 4, 5]
for num in arr where num % 2 == 0 {
    print(num)
}

// continue, break 이건 똑같음


// while
// 기본형
var cnt = 5
while 0 < cnt {
    print("Countdown \(cnt)")
    cnt -= 1
}

// repeat-while
cnt = 5
repeat {
    print("Countdown \(cnt)")
    cnt -= 1
} while cnt > 0

// 조건 검사 시점 차이
// repeat-while은 코드를 한번 실행하고 조건 검사함 -> 한번은 실행됨
// 한번은 실행되야하는 코드, 루프 안에서 조건을 만족하는 코드 등 사용