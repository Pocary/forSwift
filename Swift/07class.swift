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
