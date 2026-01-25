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
    let closedRange = 1...5
    let halfOpenRange = 1..<5

    print(closedRange)
    for i in closedRange {
        print(i)
    }

    print(halfOpenRange)
    for i in halfOpenRange {
        print(i)
    }

    print(num + 1)      // 21
    print(num)          // 20
    print(num += 1)     // () 21이 된 상태긴 함
    print(num)          // 21
    // print(num % 2 == 0 ? "even number" : "odd number") 
    print(closedRange ~= 6)     // 있는지 없는지 bool값 리턴

}

func collectionType() {
    // Array
    // 내가 아는 array임 그냥
    var computer : [String] = ["CPU", "MainBoard", "Power"]
    print(computer)
    computer.append("Cooler")
    print(computer)
    computer += ["RAM"]
    print(computer)
    let firstItem = computer[0]     // index로 접근 가능
    print("첫 번째 항목은 \(firstItem)입니다.")
    computer[4] = "Two RAM"
    print(computer)
    computer.insert("GPU", at:3)
    print(computer)
    for part in computer {
        print(part)
    }

    // Set
    // 값 중복 불가, 순서 없음
    // Hash Table기반으로 값 찾기 존나빠름 O(1)수준 
    // Hash Randomization으로 인해 실행할 때마다 출력순서 달라짐;;
    var myChampion : Set<String> = ["Aatrox", "Joy", "Poppy"]
    print(myChampion)
    myChampion.insert("Caitlyn")
    print(myChampion)
    myChampion.remove("Aatrox")
    print(myChampion)
    print(myChampion.contains("Joy"))   // 해당 값이 있는지 bool
    for champ in myChampion {
        print(champ)
    }

    // Dictionary
    // key-value 데이터 저장
    // key 중복불가, value 상관없음
    var nameOfStudentNumber : [Int:String] = [60242054:"장성진"]
    print(nameOfStudentNumber)
    nameOfStudentNumber[12345678] = "김갑수"
    nameOfStudentNumber[87654321] = "박근영"
    print(nameOfStudentNumber)
    nameOfStudentNumber[87654321] = nil
    print(nameOfStudentNumber)
    if let stuNum = nameOfStudentNumber[12345678] {
        print("학생의 이름은 \(stuNum)입니다.")
    } else {
        print("해당 학번의 학생 정보를 찾을 수 없습니다.")
    }
    nameOfStudentNumber[87654321] = "박근영"
    nameOfStudentNumber[99999999] = "신창섭"
    for (stuNum, name) in nameOfStudentNumber {
        print("\(stuNum)학번의 학생은 \(name)입니다.")
    }
}

// dataType()
// operater()
collectionType()