func dataType() {
    let num : Int = 10
    let doubleNum : Double = Double(num)
    let pi : Float = 3.14


    typealias Name = String
    let me : Name = "bokhal"
    let you : Name = "idiot"

    print(num)
    print(doubleNum)
    print(pi)
    print("my name is", me)
    print("you are " + you)

}

func operater() {
    var num : Int = 20
    print(num + 1)  // 21
    print(num)      // 20
    print(num += 1) // () 21이 된 상태긴 함
    print(num)      // 21
    print(num % 2 == 0 ? "even number" : "odd number")

}

operater()