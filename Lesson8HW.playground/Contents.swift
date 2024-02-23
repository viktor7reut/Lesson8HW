//Lesson8HW

//Task1

/*Массивы
1) Создайте массив учеников из 12 мальчиков
2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert.
   Выведите результат в консоль.
3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек
*/

//var arrayBoyAndGirl: [String] = ["Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик", "Мальчик"]
//
//arrayBoyAndGirl.append("Девочка")
//arrayBoyAndGirl.append("Девочка")
//arrayBoyAndGirl.append("Девочка")
//arrayBoyAndGirl.insert("Девочка", at: 4)
//arrayBoyAndGirl.insert("Девочка", at: 7)
//arrayBoyAndGirl.insert("Девочка", at: 7)
//arrayBoyAndGirl.insert("Девочка", at: 3)
//
//arrayBoyAndGirl.count
//print(arrayBoyAndGirl)
//
//func sortArrayHuman(array: [String]) {
//    var addBoy = 5
//    var addGirl = 5
//    
//    var sortArray: [String] = []
//
//    array.forEach({
//        if $0 == "Мальчик" && addBoy > 0 {
//            sortArray.append($0)
//            addBoy -= 1
//        } else if $0 == "Девочка" && addGirl > 0 {
//            sortArray.append($0)
//            addGirl -= 1
//        }
//    })
//    sortArray.count
//    print(sortArray)
//}
//
//sortArrayHuman(array: arrayBoyAndGirl)


//class Human {
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Boy: Human {
//    override init(name: String) {
//        super.init(name: name)
//    }
//}
//
//class Girl: Human {
//    override init(name: String) {
//        super.init(name: name)
//    }
//}
//
//var arrayBoyAndGirl: [Human] = [Boy(name: "Viktor"), Boy(name: "Nikita"), Boy(name: "Oleg"), Boy(name: "Ivan"), Boy(name: "Pavel"), Boy(name: "Tom"), Boy(name: "Bob"), Boy(name: "Alex"), Boy(name: "Igor"), Boy(name: "Vlad"), Boy(name: "Sam"), Boy(name: "Garry")]
//
//arrayBoyAndGirl.insert(Girl(name: "Olga"), at: 3)
//arrayBoyAndGirl.insert(Girl(name: "Galina"), at: 7)
//arrayBoyAndGirl.insert(Girl(name: "Danuta"), at: 2)
//arrayBoyAndGirl.insert(Girl(name: "Natali"), at: 3)
//arrayBoyAndGirl.insert(Girl(name: "Ekaterina"), at: 7)
//arrayBoyAndGirl.insert(Girl(name: "Evgenia"), at: 2)
//arrayBoyAndGirl.insert(Girl(name: "Svetlana"), at: 6)
//
////arrayBoyAndGirl.forEach({ print($0.name)})
//
//func sortArray(array: [Human]) {
//    var arrayFinal: [Human] = []
//    var countBoy: Int = 0
//    var countGirl: Int = 0
//    
//    array.forEach { human in
//        if let boy = human as? Boy {
//            if countBoy < 5 {
//                arrayFinal.append(boy)
//                countBoy += 1
//            }
//        }
//        else if let girl = human as? Girl {
//            if countGirl < 5 {
//                arrayFinal.append(girl)
//                countGirl += 1
//            }
//        }
//    }
//    arrayFinal.count
//    arrayFinal.forEach({ print($0.name) })
//}
//
//sortArray(array: arrayBoyAndGirl)



//Task2

/* Функции
Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль.
Всё вывести в консоль.
*/

//func webSite(name: String, surname: String, nikcname: String, emeil: String, password: String) {
//    print("Name - \(name), Surname - \(surname), Nickname - \(nikcname), emeil - \(emeil), password - \(password)")
//}
//
//webSite(name: "Viktor", surname: "Reut", nikcname: "viktor7reut", emeil: "viktor7reut@gmail.com", password: "19921111Viktor")


//Task3

class Human {
    var weaponDamage: Int = 4
    var health: Int = 9
    var armor: Int = 5
    var evasion: Int = 0
    
    init(weaponDamage: Int, health: Int, armor: Int, evasion: Int) {
        self.weaponDamage = weaponDamage // урон
        self.health = health // здоровье
        self.armor = armor // защита
        self.evasion = evasion // уклонение
    }
    
    func attack() { //
        if health >= 1 {
            
        }
    }
}

class Ork: Human {
    
}

class Elf {
    
}
