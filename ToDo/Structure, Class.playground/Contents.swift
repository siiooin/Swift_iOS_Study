import UIKit

//class Student{
//    var name: String
//    var grade: Int
//    
//    init(name: String, grade: Int){
//        self.name = name
//        self.grade = grade
//    }
//}
//
//let 학생1 = Student(name: "엘사", grade: 5)
//print("학생의 이름: ", 학생1.name)
//print("학생의 학년: ", 학생1.grade)
//
//
//class PocketMonster{
//    var name: String
//    var number: Int
//    var type: String
//    
//    init(name: String, number: Int, type: String) {
//        self.name = name
//        self.number = number
//        self.type = type
//    }
//}
//    
//    var pikachu = PocketMonster(name: "피카추", number: 25, type: "전기")
//    var charmander = PocketMonster(name: "파이리", number: 4, type: "불꽃")
//    var squirtle = PocketMonster(name: "꼬부기", number: 7, type: "물")
//    
//    var pocketMonsters = [pikachu, charmander, squirtle]
//    
//    for pokemon in pocketMonsters{
//        print("내 이름은 \(pokemon.name)야")
//        print("나는 \(pokemon.number)번이고, \(pokemon.type) 속성이야")
//    }
//

class Todo{
    var title : String
    var isCompleted: Bool
    var description: String
    
    init(title: String, isCompleted: Bool, description: String) {
        self.title = title
        self.isCompleted = false
        self.description = ""
    }
}
