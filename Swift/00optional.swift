// 그거아세요? 미아핑은 영어로도 미아핑이랍니다.

// 굉장히 당황스럽네요. 

// 영어로 미아핑이어서 우리도 미아핑으로 부르는건가?


// ?? 라는 문법이 있음

var num : Int? = nil
// 이 코드 num의 값이 있을수도있고없을수도있다는거임

let res = (num ?? 0) + 1    // unwrapping
// num이 nil이 아니면 num, nil이면 0(??의 오른쪽)

num = (num ?? 0) + 1    // 이러면 의미없음 num 자체가 Optional 변수임 

print(res)


// unwrapping 많음 

if let value = num {
    print(value)
}
// 많이씀?

func unWrap() {
    guard let value = num else {
        print("값 없음") 
        return 
    }
    print(value)
}
// 함수용
unWrap()

let val = num ?? 0
print(val)
// w간지남




// 추가:

// UI쪽에서 이런거 많이 씀
// label.text = user?.name ?? "이름 없음" 