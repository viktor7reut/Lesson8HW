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

//class Human {
//    var weaponDamage: Int
//    var health: Int
//    var armor: Int
//    var evasion: Bool
//
//    init(weaponDamage: Int = 4, health: Int = 9, armor: Int = 5, evasion: Bool = false) {
//        self.weaponDamage = weaponDamage
//        self.health = health
//        self.armor = armor
//        self.evasion = evasion
//    }
//
//    func attack(_ opponent: Human) {
//        if opponent.evasion == false {
//            if opponent.armor > 0 {
//                opponent.armor -= weaponDamage
//            } else {
//                opponent.health -= weaponDamage
//            }
//        } else {
//            opponent.evasion = false
//        }
//    }
//}
//
//class Ork: Human {
//    override init(weaponDamage: Int, health: Int, armor: Int, evasion: Bool) {
//        super.init(weaponDamage: 3, health: 10, armor: 10, evasion: false)
//    }
//
//    override func attack(_ opponent: Human) {
//        if opponent.evasion == false {
//            if opponent.armor > 0 {
//                opponent.armor -= weaponDamage
//            } else {
//                opponent.health -= weaponDamage
//            }
//        } else {
//            opponent.evasion = false
//        }
//    }
//}
//
//class Elf: Human {
//    override init(weaponDamage: Int, health: Int, armor: Int, evasion: Bool) {
//        super.init(weaponDamage: 6, health: 8, armor: 0, evasion: true)
//    }
//
//    override func attack(_ opponent: Human) {
//        if opponent.evasion == false {
//            if opponent.armor > 0 {
//                opponent.armor -= weaponDamage
//            } else {
//                opponent.health -= weaponDamage
//            }
//        }
//    }
//}
//
//
//var human = Human(weaponDamage: 4, health: 9, armor: 5, evasion: false)
//var ork = Ork(weaponDamage: 3, health: 10, armor: 10, evasion: false)
//var elf = Elf(weaponDamage: 6, health: 8, armor: 0, evasion: true)
//
//print("Турнир начинается!!! ")
//print("Боец справа - Человек: Атака - \(human.weaponDamage), Здоровье - \(human.health), Защита - \(human.armor), Уклонение - \(human.evasion) ")
//print("Боец слева - Орк: Атака - \(ork.weaponDamage), Здоровье - \(ork.health), Защита - \(ork.armor), Уклонение - \(ork.evasion) ")
//human.attack(ork)
//print("Человек атакует орка - Орк: Здоровье - \(ork.health), Защита - \(ork.armor)")
//ork.attack(human)
//print("Орк атакует человека - Человек: Здоровье - \(human.health), Защита - \(human.armor)")
//human.attack(ork)
//print("Человек атакует орка - Орк: Здоровье - \(ork.health), Защита - \(ork.armor)")
//ork.attack(human)
//print("Орк атакует человека - Человек: Здоровье - \(human.health), Защита - \(human.armor)")
//human.attack(ork)
//print("Человек атакует орка - Орк: Здоровье - \(ork.health), Защита - \(ork.armor)")
//ork.attack(human)
//print("Орк атакует человека - Человек: Здоровье - \(human.health), Защита - \(human.armor)")
//human.attack(ork)
//print("Человек атакует орка - Орк: Здоровье - \(ork.health), Защита - \(ork.armor)")
//ork.attack(human)
//print("Орк атакует человека - Человек: Здоровье - \(human.health), Защита - \(human.armor)")
//human.attack(ork)
//print("Человек атакует орка - Орк: Здоровье - \(ork.health), Защита - \(ork.armor)")
//ork.attack(human)
//print("Орк атакует человека - Человек: Здоровье - \(human.health), Защита - \(human.armor)")
//print("Орк победил!!!")


//Task3Ver2Final

class Human {
    var name: String
    var weaponDamage: Int
    var health: Int
    var armor: Int
    var evasion: Bool
    
    init(name: String = "Человек", weaponDamage: Int = 4, health: Int = 9, armor: Int = 5, evasion: Bool = false) {
        self.name = name
        self.weaponDamage = weaponDamage
        self.health = health
        self.armor = armor
        self.evasion = evasion
    }
    
    func attack(_ opponent: Human) {
        if opponent.health > 0 {
            if opponent.evasion == false {
                if opponent.armor > 0 {
                    opponent.armor -= weaponDamage
                } else {
                    opponent.health += opponent.armor // поправка по урону на отрицательное значение защиты после аттаки
                    opponent.armor = 0 // для красоты отображение
                    opponent.health -= weaponDamage
                }
            } else {
                opponent.evasion = false
            }
        }
    }
}

class Ork: Human {
    override init(name: String, weaponDamage: Int, health: Int, armor: Int, evasion: Bool) {
        super.init(name: "Ork", weaponDamage: 3, health: 10, armor: 10, evasion: false)
    }

    override func attack(_ opponent: Human) {
        if opponent.health > 0 {
            if opponent.evasion == false {
                if opponent.armor > 0 {
                    opponent.armor -= weaponDamage
                } else {
                    opponent.health += opponent.armor
                    opponent.armor = 0
                    opponent.health -= weaponDamage
                }
            } else {
                opponent.evasion = false
            }
        }
    }
}

class Elf: Human {
    override init(name: String, weaponDamage: Int, health: Int, armor: Int, evasion: Bool) {
        super.init(name: "Elf", weaponDamage: 6, health: 8, armor: 0, evasion: true)
    }

    override func attack(_ opponent: Human) {
        if opponent.health > 0 {
            if opponent.evasion == false {
                if opponent.armor > 0 {
                    opponent.armor -= weaponDamage
                } else {
                    opponent.health += opponent.armor
                    opponent.armor = 0
                    opponent.health -= weaponDamage
                }
            } else {
                opponent.evasion = false
            }
        }
    }
}

func tournament(fighterOne: Human, fighterTwo: Human) {
    while fighterOne.health >= 0 && fighterTwo.health >= 0 {
        print("\(fighterOne.name) аттакует \(fighterTwo.name)")
        
        fighterOne.attack(fighterTwo)
        
        print("Боец \(fighterTwo.name): Здоровье - \(fighterTwo.health), Защита - \(fighterTwo.armor), Уклонение - \(fighterTwo.evasion)")
        
        if fighterTwo.health <= 0 {
            print("Победил \(fighterOne.name)")
            break
        }
        
        print("\(fighterTwo.name) аттакует \(fighterOne.name)")
        
        fighterTwo.attack(fighterOne)
        
        print("Боец \(fighterOne.name): Здоровье - \(fighterOne.health), Защита - \(fighterOne.armor), Уклонение - \(fighterOne.evasion)")
        
        if fighterOne.health <= 0 {
            print("Победил \(fighterTwo.name)")
            break
        }
    }
}

var human = Human(name: "Человек", weaponDamage: 4, health: 9, armor: 5, evasion: false)
var ork = Ork(name: "Орк", weaponDamage: 3, health: 10, armor: 10, evasion: false)
var elf = Elf(name: "Ельф", weaponDamage: 6, health: 8, armor: 0, evasion: true)

// tournament humanVSork

print("Турнир начинается!!! ")
print("Боец справа - Человек: Атака - \(human.weaponDamage), Здоровье - \(human.health), Защита - \(human.armor), Уклонение - \(human.evasion) ")
print("Боец слева - Орк: Атака - \(ork.weaponDamage), Здоровье - \(ork.health), Защита - \(ork.armor), Уклонение - \(ork.evasion) ")


tournament(fighterOne: human, fighterTwo: ork)

// tournament humanVSElf

//print("Турнир начинается!!! ")
//print("Боец справа - Человек: Атака - \(human.weaponDamage), Здоровье - \(human.health), Защита - \(human.armor), Уклонение - \(human.evasion) ")
//print("Боец слева - Ельф: Атака - \(elf.weaponDamage), Здоровье - \(elf.health), Защита - \(elf.armor), Уклонение - \(elf.evasion) ")
//
//
//tournament(fighterOne: human, fighterTwo: elf)

// tournament orkVSElf

//print("Турнир начинается!!! ")
//print("Боец справа - Орк: Атака - \(ork.weaponDamage), Здоровье - \(ork.health), Защита - \(ork.armor), Уклонение - \(ork.evasion) ")
//print("Боец слева - Ельф: Атака - \(elf.weaponDamage), Здоровье - \(elf.health), Защита - \(elf.armor), Уклонение - \(elf.evasion) ")
//
//
//tournament(fighterOne: ork, fighterTwo: elf)
