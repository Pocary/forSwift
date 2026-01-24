func ternaryOperaterAndIf() {
    // if문은 그냥 똑같음 정리안함

    // 삼항연산자
    // 도 똑같음
    // let num = 32; 
    // print(num % 2 == 0 ? "its even number." : "its odd number.")
}

func switc() {
    // switch 
    // 개쩐다 char이 됨 
    // break; 없어도 됨
    let char : Character = "a"

    switch char {
    case "a":
        print("char is a.")
    case "z":
        print("char is z.")
    default:
        print("not either a or z.")
    }

    // 개쩐다 여러개가 들어감 
    let someCharacter: Character = "j"

    switch someCharacter {
    case "a", "e", "i", "o", "u":
        print("\(someCharacter) is a vowel")
    default:
        print("\(someCharacter) is a consonant")
    }

    // 범위연산자와 함께 사용가능 
    let age = 23
    switch age {
    case 1...11:
        print("child")
    case 12..<18:
        print("youth")
    case 18...:
        print("adult")
    default:
        print("unhuman")
    }
    //      이렇게 사용하면 코드의 의도가 명확히 보임
    //      if로 범위를 지정하는것보다 범위연산자를 사용하는게 더 낫다 

    //      분기예측을 너무 신경쓰지 말 것
    //      의도를 명확히 한 후 병목이 생긴 부분을 바꾸면 됨 

}

// ternaryOperaterAndIf()
switc()