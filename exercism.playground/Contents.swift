import Darwin
import Foundation

//Hi there,
//I have been studying swift and swiftUI for the past 6 months as an autodidact. Now, that I am more familiar with the basic of language programming I would love go deep in learn ways more readable to solve those problems.

//EXERCISM https://exercism.org
//------FUNCTIONS

/*func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate * 8).rounded()
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * 22
    let montlhyDiscount = (monthlyRate) * (discount / 100)
    return (monthlyRate - montlhyDiscount).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (budget / (monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount) / 22)).rounded(.down)
}*/

/*
func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func checkPassoword (_ passwordChecked: String) -> String {
        if passwordChecked == password {
            return secret
        } else {
            return "Sorry. No hidden secrets here."
        }
    }
    return checkPassoword
}

    let secretFunction = protectSecret("Steal the world's supply of french fries!", withPassword: "5up3r53cr37")

    print(secretFunction("UMBRA will fill everyone's sugar bowls with salt!"))
    print(secretFunction("5up3r53cr37"))
 


func makeCombo(_ x: Int) -> Int {
  (x * 13) % 256
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
        let firstValue = f(room)
        let secondValue = f(firstValue)
        let thirdValue = f(secondValue)
        return (firstValue, secondValue, thirdValue)
}

generateCombination(forRoom: 227, usingFunction: makeCombo)
// => (135, 219, 31)

print(makeCombo(2))
*/

//se o pagamento mensal estiver 10% acima do seu orçamento mensal, você desejará retornar um lembrete especial para ser frugal:


//-----STATEMENTS
/*func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthlyPayment = price / 60

    if  monthlyPayment < monthlyBudget {
        return "Yes! I'm getting a \(vehicle)"
    } else if abs(monthlyPayment - monthlyBudget) <= (monthlyPayment * 10 / 100) {
        return "I'll have to be frugal if I want a \(vehicle)"
    }
    return "Darn! No \(vehicle) for me"
}


canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00)
// => "Yes! I'm getting a 1974 Ford Pinto"
canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00)
// => "Darn! No 2011 Bugatti Veyron for me"
canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200)
// => "I'll have to be frugal if I want a 2020 Indian FTR 1200"



func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 2...3:
        return "You will need a motorcycle license for your vehicle"
    case 4...6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}

licenseType(numberOfWheels: 2)
// => "You will need a motorcycle license for your vehicle"
licenseType(numberOfWheels: 6)
// => "You will need an automobile license for your vehicle"
licenseType(numberOfWheels: 18)
// => "You will need a commercial trucking license for your vehicle"
licenseType(numberOfWheels: 0)
// => "We do not issue licenses for those types of vehicles"


//A taxa anual de registro do seu novo veículo é baseada na seguinte fórmula:
//
//Para qualquer veículo com 10 anos ou mais, a taxa é fixa de $ 25.
//Para qualquer carro mais novo:
        //Comece com um custo base que seja o preço de varejo padrão do fabricante (MSRP) para o veículo ou $ 25.000, o que for maior.
        //Então, para cada ano de idade, subtraia 10% do preço base.
        //Por fim, divida esse valor por 100. Retorne o valor inteiro em dólares mais próximo que seja menor ou igual a esse valor.

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld < 10 else { return 25 }
    
    let baseCost = msrp > 25_000 ? msrp : 25_000
    
    return  Int((baseCost - ((baseCost / 100 * 10) * yearsOld)) / 100)
}
    
registrationFee(msrp: 2_250_800, yearsOld: 9)
// => 2250
registrationFee(msrp: 25_000, yearsOld: 3)
// => 175
registrationFee(msrp: 34_000, yearsOld: 30)
// => 25
*/

//------ARRAYS


//func getCard(at index: Int, from stack: [Int]) -> Int {
//  return stack[index]
//}

//let index = 2
//getCard(at: index, from: [1, 2, 4, 1])
//// => 4

//Implemente a função setCard(at:in:to) que retorna uma nova pilha que é uma cópia da pilha de entrada, mas que tem o cartão na posição index alterado para o novo cartão fornecido. Se o índice fornecido não for um índice válido na pilha, a pilha original deve ser retornada, inalterada.

//func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
//    var newStack = stack
//    if newStack.contains(index){
//        newStack[index] = newCard
//        return newStack
//    }
//    return stack
//}

//let index = 2
//let newCard = 6
//setCard(at: index, in: [1, 2, 4, 1], to: newCard)
//// => [1, 2, 6, 1]

//func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
//    var newStack = stack
//    newStack.append(newCard)
//    return newStack
//}

//let newCard = 8
//insert(newCard, atTopOf: [5, 9, 7, 1])
// => [5, 9, 7, 1, 8]

//func removeCard(at index: Int, from stack: [Int]) -> [Int] {
//    var newStack = stack
//    if newStack.contains(index){
//        newStack.remove(at: index)
//        return newStack
//    }
//    return stack
//}

//let index = 2
//removeCard(at: index, from: [3, 2, 6, 4, 8])
//// => [3, 2, 4, 8]

//func removeTopCard(_ stack: [Int]) -> [Int] {
//    var newStack = stack
//    if !newStack.isEmpty{
//        newStack.removeLast()
//        return newStack
//    }
//    return stack
//}
//removeTopCard([3, 2, 6, 4, 8])
// => [3, 2, 6, 4]

//func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
//    var newStack = stack
//    newStack.insert(newCard, at: 0)
//    return newStack
//}
//
////("[10, 3, 8, 9, 1, 7, 6, 5, 2]") is not equal to ("[10, 4, 3, 8, 9, 1, 7, 6, 5, 2]") -
//let newCard = 10
//insert(newCard, atBottomOf: [4, 3, 8, 9, 1, 7, 6, 5, 2])
//// => [8, 5, 9, 7, 1]

//func removeBottomCard(_ stack: [Int]) -> [Int] {
//    var newStack = stack
//    if !newStack.isEmpty{
//        newStack.removeFirst()
//        return newStack
//    }
//    return stack
//}

//removeBottomCard([8, 5, 9, 7, 1])
// => [5, 9, 7, 1]

//func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
//    var check = stack.count == size ? true : false
//    return check
//}

//let stackSize = 4
//checkSizeOfStack([3, 2, 6, 4, 8], stackSize)
// => false


//Implemente a função evenCardCount(_:) que percorre a pilha e conta o número de cartas pares nela.

//func evenCardCount(_ stack: [Int]) -> Int {
//    var evenCard = 0
//    for each in stack {
//        if (each % 2) == 0 {
//            evenCard += 1
//        }
//    }
//    return evenCard
//}
//
//print(evenCardCount([3,8,4,5,1,6,10]))
//// => 4

//-------Tuples

/*To convert from Cartesian coordinates to polar coordinates, you can use the following formulas:
 
 r = sqrt(x^2 + y^2)

 theta = atan2(y, x)

 where:

 r is the distance from the origin to the point
 theta is the angle between the positive x-axis and the line connecting the origin to the point
 x is the x-coordinate of the point in the Cartesian plane
 y is the y-coordinate of the point in the Cartesian plane
 */

//    func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {

//        let (powX, powY) = cart (Better way to extrate the values from a tuple)
//        let powX = pow(cart.x, 2)
//        let powY = pow(cart.y, 2)
//
//        let r = sqrt(powX + powY)
//        let phi = atan2(cart.y, cart.x)
//
//         return (r, phi)
//    }

//let coordinate = (x: -78.70524308742053, y: -39.243573777212724)
//cartesianToPolar(coordinate)
//// => (r: 87.94642330565522, phi: -2.6790540755626306)

//func combineRecords(
//  production: (toy: String, id: Int, productLead: String),
//  gifts: (Int, [String])
//) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
//    let (toy, id, productLead) = production
//    let (_, recipients) = gifts
//
//    return (id: id, toy: toy, productLead: productLead, recipients: recipients)
//}
//
//
//print(combineRecords(
//  production: (
//    toy: "Chemistry set",
//    id: 328509,
//    productLead: "Binkles"
// ),
//  gifts: (
//    328509,
//    ["Inés", "Maxime", "Bandile", "Shaurya", "Екатерина"]
//  )
//))
//// => (id: 328509, toy: "Chemistry set", productLead: "Binkles", recipients: ["Inés", "Maxime", "Bandile", "Shaurya", "Екатерина"])



//-------Lasagna Master Exercise
//https://exercism.org/tracks/swift/exercises/lasagna-master

//// TODO: define the 'remainingMinutesInOven' function
//func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
//    return expectedMinutesInOven - elapsedMinutes
//}
//
//remainingMinutesInOven(elapsedMinutes: 30)
//// => 10
//remainingMinutesInOven(elapsedMinutes: 30, expectedMinutesInOven: 75)
//// => 45
//
//
//// TODO: define the 'preparationTimeInMinutes' function
//func preparationTimeInMinutes(layers: String..., timeForLayers: Int = 2 ) -> Int {
//    return layers.count * timeForLayers
//}
//
//preparationTimeInMinutes(layers: "sauce", "noodles")
//// => 4
//preparationTimeInMinutes(layers: "sauce", "noodles", "sauce", "meat", "mozzarella", "noodles", "sauce", "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
//// => 24
//
////For each noodle layer in your lasagna, you will need 3 noodles. For each sauce layer in your lasagna, you will need 0.2 liters of sauce.
//// TODO: define the 'quantities' function
//func quantities(layers: String...) -> (noodles: Int, sauce: Double){
//    var countNoodles: Int = 0, countSauce: Int = 0
//
//    for each in layers {
//        if each == "noodles" {
//            countNoodles += 1
//        } else if each == "sauce" {
//            countSauce += 1
//        }
//    }
//    return (countNoodles * 3, Double(countSauce) * 0.2)
//}
//
//quantities(layers: "sauce", "noodles", "sauce", "meat", "mozzarella", "noodles", "sauce", "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
//// => (noodles 9, sauce 0.8)
//quantities(layers: "sauce", "noodles", "sauce", "noodles", "meat", "noodles", "mozzarella")
//// => (noodles 9, sauce 0.4)
//
////Note that there are 33.814 fluid ounces per liter.
//// TODO: define the 'toOz' function
//func toOz(_ amount: inout (noodles: Int, sauce: Double)){
//    amount.sauce *= 33.814
//}
//
//var amount = (noodles: 9, sauce: 0.8)
//toOz(&amount)
//// => amount is now (noodles: 9, sauce: 27.0512)
//
//// TODO: define the 'redWine' function
//func redWine(layers: String...) -> Bool{
//    var redWineCount = 0
//    var whiteWineCount = 0
//
//    for each in layers {
//        if each == "mozzarella" || each == "ricotta" || each == "béchamel" {
//            redWineCount += 1
//        } else if each == "sauce" || each == "meat" {
//            whiteWineCount += 1
//        }
//    }
//    return redWineCount > whiteWineCount ? false : true
//}
//
//redWine(layers: "sauce", "noodles", "sauce", "meat", "mozzarella", "noodles", "sauce", "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
//// => true
//redWine(layers: "sauce", "noodles", "béchamel", "meat", "mozzarella", "noodles", "ricotta", "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
//// => false


//-------------------------------------------Slice Sizing
//https://exercism.org/tracks/swift/exercises/pizza-slices

//Area = π * r^2 (r is half os diameter)
//func sliceSize(diameter: Double?, slices: Int?) -> Double? {
//    guard let checkDiameter = diameter else { return nil }
//    guard let checkSlices = slices else { return nil }
//
//    if checkDiameter < 0.0 || checkSlices < 1 { return nil}
//
//
//    let area = (3.141592653589793 * pow((checkDiameter/2), 2)) / Double(checkSlices)
//
//    return area
//}
//
//sliceSize(diameter: 16, slices: 12)
//// => 16.75516081914556
//sliceSize(diameter: nil, slices: 8)
//// => nil
//
//func biggestSlice(diameterA: String, slicesA: String, diameterB: String, slicesB: String) -> String {
//    let dA = Double(diameterA)
//    let sA = Int(slicesA)
//    let dB = Double(diameterB)
//    let sB = Int(slicesB)
//
//    let areaA = sliceSize(diameter: dA, slices: sA)
//    let areaB = sliceSize(diameter: dB, slices: sB)
//
//    switch (areaA, areaB) {
//    case let (pizzaA?, pizzaB?) where pizzaA > pizzaB : return "Slice A is bigger"
//    case let (pizzaA?, pizzaB?) where pizzaA < pizzaB: return "Slice B is bigger"
//    case (_?, nil): return "Slice A is bigger"
//    case (nil, _?): return "Slice B is bigger"
//    default: return "Neither slice is bigger"
//    }
//}
//
//
//
//    biggestSlice(diameterA: "10", slicesA: "6", diameterB: "14", slicesB: "12")
//    // => Slice A is bigger
//    biggestSlice(diameterA: "10", slicesA: "6", diameterB: "12", slicesB: "8")
//    // => Slice B is bigger
//    biggestSlice(diameterA: "Pepperoni", slicesA: "6", diameterB: "Sausage", slicesB: "12")
//// => Neither slice is bigger

//----------------------Dictionries - High Score Board
//https://exercism.org/tracks/swift/exercises/high-score-board

//func newScoreBoard() -> [String: Int] {
//    return [String: Int] ()
//}
//
//var highScores = newScoreBoard()
//func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
//    scores [name, default: 0 ] = score
//}
//
//addPlayer(&highScores, "Dave Thomas")
//// Adds "Dave Thomas" to the dictionary with a high score of 0.
//addPlayer(&highScores, "José Valim", 486_373)
//// Adds "José Valim" to the dictionary with a high score of 486_373.
//
//func removePlayer(_ scores: inout [String: Int], _ name: String) {
//    scores.removeValue(forKey: name)
//}
//
//removePlayer(&highScores, "Dave Thomas")
//// Removes "Dave Thomas" from thee dictionary
//removePlayer(&highScores, "Rose Fanaras")
//// Doesn't alter the dictionary as "Rose Fanaras" is not in the dictionary.
//
//func resetScore(_ scores: inout [String: Int], _ name: String) {
//    scores[name] = 0
//}
//
//resetScore(&highScores, "Dave Thomas")
//// High score for "Dave Thomas" set to 0
//
//func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
//    let value: Int? = scores[name]
//    scores.updateValue(delta + (value ?? 0), forKey: name)
//}
//
//addPlayer(&highScores, "Freyja Ćirić", 12_771_018)
//updateScore(&highScores, "Freyja Ćirić", 73)
//// Score for "Freyja Ćirić" updated to 12_771_091
//
//func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
//    return scores.sorted(by: {$0.key < $1.key})
//}
//
//orderByPlayers(["Jesse Johnson": 1337, "Min-seo Shin": 1999, "Amil PAstorius": 99373])
//
//
//func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
//    return scores.sorted(by: {$0.value > $1.value})
//}
//
//orderByScores(highScores)
//// => [("Freyja Ćirić", 12_771_091), ("José Valim", 486_373), ("Dave Thomas", 0)]

//--------------------Master Mixologist - Loops
//https://exercism.org/tracks/swift/exercises/master-mixologist

//func timeToPrepare(drinks: [String]) -> Double {
//    var timeToPrepare: Double = 0
//
//    for eachDrink in drinks{
//        if eachDrink == "water" || eachDrink == "soda" || eachDrink == "beer"{
//            timeToPrepare += 0.5
//        } else if eachDrink == "shot" {
//            timeToPrepare += 1.0
//        } else if eachDrink == "mixed drink" {
//            timeToPrepare += 1.5
//        } else if eachDrink == "fancy drink" {
//            timeToPrepare += 2.5
//        } else if eachDrink == "frozen drink"{
//            timeToPrepare += 3.0
//        }
//    }
//  return timeToPrepare
//}
//
//timeToPrepare(drinks: ["beer", "frozen drink", "shot"])
// => 4.5

//func makeWedges(needed: Int, limes: [String]) -> Int {
//    var wedges = needed
//    var limesToUse = limes
//    var limesUsed: Int = 0
//
//    guard limes.count > 0, needed > 0 else { return 0 }
//
//        for each in limesToUse{
//            if each == "small" {
//                    limesToUse.remove(at: 0)
//                    wedges -= 6
//                    limesUsed += 1
//            } else if each == "medium" {
//                    limesToUse.remove(at: 0)
//                    wedges -= 8
//                    limesUsed += 1
//            } else if each == "large" {
//                    limesToUse.remove(at: 0)
//                    wedges -= 10
//                    limesUsed += 1
//            }
//            if wedges <= 0 || limesToUse.count <= 0{
//                    break
//            }
//        }
//
//    return limesUsed
//}
//
//makeWedges(needed: 25, limes: ["small", "small", "large", "medium", "small"])
//// => 4
//
//func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
//    var ordersToPrepare = remainingOrders
//    var minutes = Double(minutesLeft)
//
//    while minutes > 0 && !ordersToPrepare.isEmpty {
//        minutes -= timeToPrepare(drinks: ordersToPrepare.removeFirst())
//    }
//    return ordersToPrepare
//}
//
//print(finishShift(minutesLeft: 2, remainingOrders: [["mixed drink", "water", "soda", "soda", "beer"], ["frozen drink", "frozen drink", "frozen drink", "frozen drink", "frozen drink", "frozen drink", "frozen drink", "frozen drink", "frozen drink", "frozen drink"]]))
//// => [["beer", "beer", "water"], ["mixed drink", "frozen drink"]]
//
//func orderTracker(orders: [(drink: String, time: String)]) -> (
//  beer: (first: String, last: String, total: Int)?,
//  soda: (first: String, last: String, total: Int)?
//) {
//    var beerTimes: [String] = []
//    var sodaTimes: [String] = []
//
//    for each in orders {
//        let (drink, time) = each
//        if drink == "beer" {
//            beerTimes.append(String(time))
//        } else if drink == "soda" {
//            sodaTimes.append(String(time))
//        }
//    }
//
//return (beer: !beerTimes.isEmpty ? (first: beerTimes.first!, last: beerTimes.last!, total: beerTimes.count) : nil, soda: !sodaTimes.isEmpty ? (first: sodaTimes.first!, last: sodaTimes.last!, total: sodaTimes.count) : nil)
//}
//
//print(orderTracker(orders: [(drink: "beer", time: "10:01"), (drink: "frozen drink", time: "10:02"), (drink: "shot", time: "10:05"), (drink: "fancy drink", time: "10:06"), (drink: "soda", time: "10:09"), (drink: "beer", time: "10:15"), (drink: "beer", time: "10:22"), (drink: "water", time: "10:26"), (drink: "mixed drink", time: "10:28"), (drink: "frozen drink", time: "10:33")]))

// => ( "beer: (first "10:01", last "10:22", total 3), soda: (first "10:09", last "10:09", total 1))



//--------------- Closures - Double-Null0111: Closures Are Forever
//https://exercism.org/tracks/swift/exercises/bomb-defuser/edit

//Retorna a tupla com a ordem dos dois primeiros elementos invertidos.

//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure

//let flip: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.0, $0.2) }
//
////flip(("red", "yellow", "blue"))
//// => ("yellow", "red", "blue")
//
////let rotate: (String, String, String) -> (String, String, String) = TODO: Please define the stopAtOne closure
//let rotate: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.2, $0.0)}
//
////rotate(("red", "yellow", "blue"))
//// => ("yellow", "blue", "red")
//
//
////which takes as input a closure that flips two wires and a closure that rotates the three wires and returns a closure.
//func makeShuffle(
//  flipper: @escaping ((String, String, String)) -> (String, String, String),
//  rotator: @escaping ((String, String, String)) -> (String, String, String)
//) -> (UInt8, (String, String, String)) -> (String, String, String) {
//    //Creating parameters names
//    { (key: UInt8, wires: (String, String, String)) -> (String, String, String) in
//        //Assign the cable colors to a variable
//        var colorsWires = wires
//        //Transforming the key in string of type bit 01. Using compactMaps() to return just the non-nil
//        let iD = String(key,radix:2).compactMap{ $0 }
//        //Creating the ID of type bit with 8 digits
//        let keyID = String(iD.reversed()).padding(toLength: 8, withPad: "0", startingAt: 0)
//
//        for eachBit in keyID {
//            if eachBit == "0" {
//                colorsWires = flipper(colorsWires)
//            } else {
//                colorsWires = rotator(colorsWires)
//            }
//        }
//        return colorsWires
//    }
//}
//
//
//let shuffler = makeShuffle(flipper: flip, rotator: rotate)
//// => (UInt8, (String, String, String)) -> (String, String, String)
//shuffler(155, ("red", "yellow", "blue"))
//// => ("red", "blue", "yellow")


//---------------- String / The 1st Rule of Poetry Club
//https://exercism.org/tracks/swift/exercises/poetry-club/edit


//func splitOnNewlines(_ poem: String) -> [String] {
//    return poem.components(separatedBy: ",")
//}
//
////let password = splitOnNewlines("Stands so high,Huge hooves too,Impatiently waits for,Reins and harness,Eager to leave")
////print(password)
//
//func firstLetter(_ line: String) -> Character {
//    return line.first ?? "_"
//}
//
////print(firstLetter("Stands so high,Huge hooves too"))
//
//func capitalize(_ phrase: String) -> String {
//    return phrase.capitalized
//}
//
////print(capitalize("tands so high,Huge hooves too"))
//
////Implement the function trimFromEnd(_:) that removes whitespace from the end of a sentence and returns the trimmed sentence:
//func trimFromEnd(_ line: String) -> String {
//    return line.trimmingCharacters(in: .whitespaces)
//}
//
//print(trimFromEnd(" Tands so high,Huge hooves too"))
//
//func lastLetter(_ line: String) -> Character {
//    return line.last ?? "_"
//}
//
////print(lastLetter("Tands so high "))
//
//func backDoorPassword(_ phrase: String) -> String {
//
//    return phrase.capitalized + ", please"
//}
//
//print(backDoorPassword("scobdoOOo"))
//
////Implement the function ithLetter(_:i:) that returns the ith letter of a sentence. If there is no ith letter, return a space:
//func ithLetter(_ line: String, i: Int) -> Character {
//    guard line.count > i else { return " " }
//    let char:  String.Index = line.index(line.startIndex, offsetBy: i)
//    return line[char]
//}
//
//ithLetter("Impatiently waits for", i: 2)
// => "p"

//Implement the function secretRoomPassword(_:) that takes a string as input and formats it in the shouting manner required for the secret room password:
//func secretRoomPassword(_ phrase: String) -> String {
//    return phrase.uppercased() + "!"
//}
//secretRoomPassword("Super")
// => "SUPER!"


//------------Classes and Structs - Windowing System
//https://exercism.org/tracks/swift/exercises/windowing-system/edit

////Define a Position struct
//struct Position {
//    var x: Int = 0
//    var y: Int = 0
//
//    mutating func moveTo(newX: Int, newY: Int){
//        x = newX
//        y = newY
//    }
//}
//
//var point = Position(x: 10, y: 20)
//// => Position
//point.moveTo(newX: 100, newY: -100)
//point.y
//point.x
//// => -100
//
////Define a Size struct
//struct Size {
//    var width: Int = 80
//    var height: Int = 60
//
//    mutating func resize(newWidth: Int, newHeight: Int) {
//        width = newWidth
//        height = newHeight
//    }
//}
//
//let size1080x764 = Size(width: 1080, height: 764)
//var size1200x800 = size1080x764
//size1200x800.resize(newWidth: 1200, newHeight: 800)
//size1200x800.height
//size1200x800.width
//
////Define a Window class
//class Window {
//    var title: String = "New Window"
//    let screenSize: Size = Size(width: 800, height: 600)
//    var size: Size = Size()
//    var position: Position = Position()
//    var contents: String? = nil
//
//
//    func resize(to newSize: Size) {
//        var widthSize = newSize.width > 1 ? newSize.width : 1
//        var heightSize = newSize.height > 1 ? newSize.height : 1
//
//
//        if (widthSize > screenSize.width) {
//            widthSize = screenSize.width - position.x
//        }
//        if (heightSize > screenSize.height) {
//            heightSize = screenSize.height - position.y
//        }
//
//        size = Size(width: widthSize, height: heightSize)
//    }
//
//
//    func move(to newPosition: Position){
//        var positionWidth = newPosition.x > 1 ? newPosition.x : 1
//        var positionHeight = newPosition.y > 1 ? newPosition.y : 1
//
//        if (positionWidth + size.width) > screenSize.width {
//            positionWidth = screenSize.width - size.width
//        }
//        if (positionHeight + size.height) > screenSize.height {
//            positionHeight = screenSize.height - size.height
//        }
//
//        position = Position(x: positionWidth, y: positionHeight)
//
//    }
//
//    func update(title: String) {
//        self.title = title
//    }
//
//    func update(text: String?) {
//        self.contents = text
//    }
//
//    func display() -> String {
//        return "\(title)\n\(String(describing:size)),\n\(String(describing:position)),\n\(contents ?? "[This window intentionally left blank]")\n"
//    }
//}
//
//var mainWindow: Window = {
//    let initWindow = Window()
//    initWindow.title = "Main Window"
//    initWindow.resize(to: Size(width: 500, height:300))
//    initWindow.move(to: Position(x: 100, y: 200))
//    initWindow.contents = "This is the main window"
//    return initWindow
//}()
//
//print(mainWindow.display())

//--------------ENUM - Log Lines
////https://exercism.org/tracks/swift/exercises/log-lines/edit
//// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
//
//enum LogLevel: Int {
//    case trace = 0
//    case debug = 1
//    case info = 4
//    case warning = 5
//    case error = 6
//    case fatal =  7
//    case unknown = 42
//
//    init(_ line: String) {
//        switch line.prefix(5) {
//              case "[TRC]":
//                self = .trace
//              case "[DBG]":
//                self = .debug
//              case "[INF]":
//                self = .info
//              case "[WRN]":
//                self = .warning
//              case "[ERR]":
//                self = .error
//              case "[FTL]":
//                self = .fatal
//              default:
//                self = .unknown
//            }
//    }
//
//    func shortFormat(message: String) -> String {
//            return "\(rawValue):\(message)"
//        }
//}
//
//let overflow = LogLevel.error
//overflow.shortFormat(message: "Stack overflow")
//// => "6:Stack overflow"
//
//LogLevel("[INF]: File deleted")
//// => LogLevel.info
//LogLevel("Something went wrong!")
//// => LogLevel.unknown
//

//---------------- Difference of Squares - Easy
//https://exercism.org/tracks/swift/exercises/difference-of-squares/edit

//Solution goes in Sources
//class Squares {
//    var num: Int = 0
//
//    init(_ num: Int) {
//       self.num = num
//     }
//
//    var squareOfSum: Int {
//        var sum = 0
//        for index in 1...num {
//            sum += index
//        }
//        return sum * sum
//    }
//
//    var sumOfSquares: Int {
//        var sum = 0
//        for index in 1...num {
//            sum += (index * index)
//        }
//        return sum
//    }
//
//    var differenceOfSquares: Int {
//       squareOfSum - sumOfSquares
//    }
//}
//
//var differ = Squares(10)
//print(differ.squareOfSum)
//print(differ.sumOfSquares)
//print(differ.num)
//print(differ.differenceOfSquares)


//------------ Gigasecond - easy


//class Gigasecond {
//    var description: String?
//
//    init? (from date: String)  {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
//        formatter.timeZone = TimeZone(secondsFromGMT: 0)
//        guard let date = formatter.date(from: date) else { return nil }
//        let gigasecondCalculate = date.addingTimeInterval(1000000000)
//        self.description = formatter.string(from: gigasecondCalculate)
//    }
//}
//
//let giga = Gigasecond(from: "2015-01-24T22:00:00")
//print(giga?.description)

//--------------------Leap
//https://exercism.org/tracks/swift/exercises/leap/edit
//on every year that is evenly divisible by 4
//  except every year that is evenly divisible by 100
//    unless the year is also evenly divisible by 400


//Solution goes in Sources

//Solution goes in Sources
//struct Year {
//    let calendarYear: Int
//
//    init(calendarYear: Int) {
//        self.calendarYear = calendarYear
//    }
//
//    var isLeapYear: Bool {
//        if calendarYear % 400 == 0 {
//            return false
//        } else if (calendarYear % 4 == 0 && calendarYear % 100 != 0) {
//            return true
//        } else {
//            return false
//        }
//    }
//}

//let isLeapYear = Year(calendarYear: 1996)
//print(isLeapYear.isLeapYear)

//For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is

//-----------Enum RNA Transcription
//https://exercism.org/tracks/swift/exercises/rna-transcription/edit

// Define the 'Nucleotide' enum, its `init`, and its `complementOfDNA` method
//class Nucleotide {
//    var dna: String
//
//    init(_ dna: String) {
//        self.dna = dna
//    }
//
//    func complementOfDNA() throws -> String {
//        var eachDNA: String = ""
//        for each in dna {
//            switch each {
//            case "G":  eachDNA += "C"
//            case "C":  eachDNA += "G"
//            case "T":  eachDNA += "A"
//            case "A":  eachDNA += "U"
//            default:
//                throw TranscriptionError.invalidNucleotide(message: "\(each) is not a valid Nucleotide")
//            }
//        }
//        return eachDNA
//    }
//}
//
//enum TranscriptionError: Error {
//    case invalidNucleotide(message: String)
//}
//
//let checkDNA = Nucleotide("YAT")
//do { if have an error stop here
//    print(try checkDNA.complementOfDNA())
//} catch { and continue here
//    print("Chegou aqui!")
//}


//------------- Space Age
//https://exercism.org/tracks/swift/exercises/space-age/edit

//Solution goes in Sources
//class SpaceAge {
//    var seconds: Double
//    var onMercury: Double {
//        return onEarth / 0.2408467
//    }
//    var onVenus: Double {
//        return onEarth / 0.61519726
//    }
//    var onEarth: Double {
//        return seconds / 31_557_600
//    }
//    var onMars: Double {
//        return onEarth / 1.8808158
//    }
//    var onJupiter: Double {
//        return onEarth / 11.862615
//    }
//    var onSaturn: Double {
//        return onEarth / 29.447498
//    }
//    var onUranus: Double {
//        return onEarth / 84.016846
//    }
//    var onNeptune: Double {
//        return onEarth / 164.79132
//    }
//
//    init(_ seconds: Double) {
//        self.seconds = seconds
//    }
//}
//
//
//let age = SpaceAge(2_134_835_688)
//age.seconds
//age.onMercury
//age.onVenus
//age.onMars
//age.onEarth
//age.onJupiter
//age.onSaturn
//age.onUranus
//age.onNeptune

//------------------ Sum of Multiples
//https://exercism.org/tracks/swift/exercises/sum-of-multiples
//Solution goes in Sources
//class SumOfMultiples {
//    var itens: [Int] = []
//    var level: Int
//
//    init(_ level: Int, inMultiples: [Int]) {
//        self.itens = inMultiples
//        self.level = level
//    }
//
//    func multiples(num: Int) -> [Int] {
//        var multiples: [Int] = []
//        for each in 1..<level{
//            if each.isMultiple(of: num) && each < 20 {
//                multiples.append(each)
//            }
//        }
//        return multiples
//    }
//
//    func toLimit(_ level: Int, inMultiples: [Int] ) -> Int {
//        let uniqueMultiples = multiples(num: itens[0]) + multiples(num: itens[1])
//        return uniqueMultiples.reduce(0, +)
//    }
//}
//
//let test = SumOfMultiples(10, inMultiples: [3,5])
//print(test.toLimit(10, inMultiples: [3,5]))
//
//
//
//func toLimit(_ limit: Int, inMultiples: Set<Int>) -> Int {
//    var multiples: Set = [0]
//    for eachNum in inMultiples.filter({$0 > 0}) {
//        multiples = multiples.union(stride(from: eachNum, to: limit, by: eachNum))
//    }
//    return multiples.reduce(0, +)
//}
//
//print(toLimit(20, inMultiples: [3,5]))

//---------------Two Fer
//https://exercism.org/tracks/swift/exercises/two-fer
//Solution goes in Sources
//func twoFer(name: String = "you") -> String {
//    return "One for \(name), one for me."
//}
//
//print(twoFer(name: "Cris"))

//---------Bob
//https://exercism.org/tracks/swift/exercises/bob
//
//struct Bob {
//    func hey(_ input: String) -> String {
//        switch input {
//                case _ where input.allSatisfy(\.isWhitespace):
//                    return "Fine. Be that way!"
//                case _ where input == input.uppercased() && input.contains(where: \.isLetter):
//                    return "Whoa, chill out!"
//                case _ where input.hasSuffix("?"):
//                    return "Sure."
//                default:
//                    return "Whatever."
//                }
//    }
//}
//
//let bob = Bob()
//print(bob.hey("Tom-ay-to, tom-aaaah-to."))
////"Whatever."
//print(bob.hey("WATCH OUT!"))
////"Whoa, chill out!"
//print(bob.hey("Does this cryogenic chamber make me look fat?"))
////"Sure."
//print(bob.hey("Let's go make out behind the gym!"))
////"Whatever."
//print(bob.hey("It's OK if you don't want to go to the DMV."))
////"Whatever."
//print(bob.hey("WHAT THE HELL WERE YOU THINKING?"))
////"Whoa, chill out!"
//print(bob.hey("1, 2, 3 GO!"))
////"Whoa, chill out!"
//print(bob.hey("1, 2, 3."))
////"Whatever."
//print(bob.hey("4?"))
////"Sure."
//print(bob.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"))
//// "Whoa, chill out!"
//print(bob.hey("ÄMLÄTS!"))
////"Whoa, chill out!"
//print(bob.hey("ÄMLäTS!"))
////"Whatever."
//print(bob.hey("I HATE YOU"))
////"Whoa, chill out!"
//print(bob.hey("Ending with a ? means a question."))
////"Whatever."
//print(bob.hey("Wait! Hang on.  Are you going to be OK?"))
////"Sure."
//print(bob.hey(""))
////"Fine. Be that way!"
//print(bob.hey("     "))
////"Fine. Be that way!"

//--------------ETL
////https://exercism.org/tracks/swift/exercises/etl
//class ETL {
//    static func transform(_ old: [Int:[String]]) -> [String:Int] {
//        var new: [String:Int] = [:]
//
//        for (key, value) in old {
//            for each in value {
//                new[each.lowercased()] = key
//            }
//        }
//
//        return new
//    }
//}
//
//
//
//print(ETL.transform([ 1: [ "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" ],
//                            2: [ "D", "G" ],
//                            3: [ "B", "C", "M", "P" ],
//                            4: [ "F", "H", "V", "W", "Y" ],
//                            5: [ "K"],
//                            8: [ "J", "X" ],
//                            10: [ "Q", "Z" ]
//                            ]))


//------------------ Grade School
//https://exercism.org/tracks/swift/exercises/grade-school/edit
//struct GradeSchool {
//    typealias Roster = [Int: [String]]
//    var roster = Roster()
//
//    var sortedRoster: Roster {
//        roster.mapValues { $0.sorted() }
//    }
//
//    mutating func addStudent(_ nick: String, grade: Int) {
//        roster[grade, default: []].append(nick)
//    }
//
//    func studentsInGrade(_ grade: Int) -> [String] {
//        return roster[grade] ?? []
//    }
//
//}
//
//
//
//let school = GradeSchool(roster: [
//    3: ["Kyle"],
//    4: ["Christopher", "Jennifer"],
//    6: ["Kareem"]
//])
//print(school.roster)
//print(school.sortedRoster)
//print(school.studentsInGrade(4))

//---------------- Grains
//https://exercism.org/tracks/swift/exercises/grains/edit
/*Calcule o número de grãos de trigo em um tabuleiro de xadrez, dado que o número em cada quadrado dobra.*/

//class Grains {
//    let min: Int = 1
//    let max: Int = 64
//
//    func square(_ item: Int) throws -> UInt64 {
//        if item < min {
//            throw GrainsError.inputTooLow(message: "Input[\(item)] invalid. Input should be between 1 and 64 (inclusive)")
//        } else if item > max {
//            throw GrainsError.inputTooHight(message: "Input[\(item)] invalid. Input should be between 1 and 64 (inclusive)")
//        } else {
//            return UInt64(1) << (item - 1)
//        }
//    }
//
//    static var total: UInt64 {
//           UInt64.max
//       }
//}
//
//enum GrainsError: Error {
//    case inputTooHight(message: String)
//    case inputTooLow(message: String)
//}
//
//let grains = Grains()
//print(try grains.square(16))

//-----------------Hamming
//https://exercism.org/tracks/swift/exercises/hamming/edit
//class Hamming {
//    static func compute(_ dna: String, against: String) -> Int? {
//        guard dna.count == against.count else { return nil }
//        let dnaSequence = zip(dna,against)
//        var countDistante: Int = 0
//        for (dna1, dna2) in dnaSequence {
//            if dna1 != dna2 {
//                countDistante += 1
//            }
//        }
//            return countDistante
//    }
//}
//
//let hamming = Hamming()
//print(Hamming.compute("AAACTAGGGG", against: "AAACTAGGGG")!)

//------------------ List Ops
//https://exercism.org/tracks/swift/exercises/list-ops/edit

//class ListOps {
//    static func append<T>(_ list1: [T], _ list2: [T]) -> [T] {
//        //using array as parameters
//        var newList = list1
//        for each in list2 {
//            newList += [each]
//        }
//        return newList
//    }
//
//    static func concat<T>(_ lists: [T]...) -> [T]{
//        //using variadic parameters
//        var flatList: [T] = []
//        for eachLits in lists {
//            for eachElement in eachLits{
//              flatList += [eachElement]
//            }
//        }
//        return flatList
//    }
//
//    static func filter<T>(_ list: [T], _ predicate: (T) -> Bool ) -> [T] {
//        //using closure as parameter
//        var filteredList: [T] = []
//        for each in list{
//            if predicate(each) {
//                filteredList += [each]
//            }
//        }
//        return filteredList
//    }
//
//    static func length<T>(_ list: [T]) -> Int {
//        var count: Int = 0
//        for _ in list {
//            count += 1
//        }
//        return count
//    }
//
//    static func map<T>(_ list: [T], _ function: (T) -> T) -> [T] {
//        var mapedList: [T] = []
//        for eachItem in list{
//            mapedList += [function(eachItem)]
//        }
//
//        return mapedList
//    }
//
//    static func foldLeft<T>(_ list: [T], accumulated: T, combine: (T,T) -> T) -> T {
//            var result = accumulated
//            for item in list{
//                result = combine(result, item)
//            }
//            return result
//        }
//
//    static func foldRight<T>(_ list: [T], accumulated: T, combine: (T,T) -> T) -> T {
//        var result = accumulated
//        for item in reverse(list){
//            result = combine(item, result)
//        }
//        return result
//    }
//
//    static func reverse<T>(_ list: [T]) ->  [T] {
//        var newList: [T] = []
//        for each in stride(from: (list.count) - 1, to: -1, by: -1){
//            newList.append(list[each])
//        }
//        return newList
//    }
//}

//print(ListOps.append([1, 2], [2, 3, 4, 5]))
//print(ListOps.concat([1, 2], [3], [], [4, 5, 6]))
//print(ListOps.filter([1, 2, 3, 4, 5], { $0 % 2 == 1 }))
//print(ListOps.length([1, 2, 3, 4, 5]))
//print(ListOps.map([1, 3, 5, 7], { $0 + 1 }))
//print(ListOps.foldLeft([1, 2, 3, 4], accumulated: 5, combine: +))
//print(ListOps.foldLeft([2, 5], accumulated: 5, combine: /))
//print(ListOps.foldRight([2, 5], accumulated: 5, combine: +))
//print(ListOps.foldRight(["e", "x", "e", "r", "c", "i", "s", "m"], accumulated: "!", combine: +))
//print(ListOps.reverse([1, 3, 5, 7]))

 
//-------- Isogram
//https://exercism.org/tracks/swift/exercises/isogram/edit

//class Isogram {
//    static func isIsogram(_ word: String) -> Bool {
//        let letters = word.lowercased().filter(\.isLetter)
//
//        return letters.count == Set(letters).count ? true : false
//       }
//}
//
//print(Isogram.isIsogram("Slphe"))

/*En résumé, cette expression vérifie si la clé lowercasedLetter existe dans le dictionnaire count. Si elle existe, la valeur associée est incrémentée de 1. Si elle n'existe pas, une nouvelle paire clé-valeur est ajoutée au dictionnaire avec la clé lowercasedLetter et la valeur 1.*/
//func isIsogram(_ word: String) -> Bool {
//    var count: [String: Int] = [:]
//    for letter in word {
//        guard letter.isLetter else { continue }
//        let lowercasedLetter = letter.lowercased()
//        count[lowercasedLetter] = (count[lowercasedLetter] ?? 0) + 1
//        print(count)
//        if count[lowercasedLetter]! > 1 {
//            return false
//        }
//    }
//    return true
//}
//
//print(isIsogram("Shopee"))

//-----------------------Nucleotide Count
//https://exercism.org/tracks/swift/exercises/nucleotide-count/edit

//class DNA {
//    var sequence: [String: Int] = ["A": 0, "T": 0, "C": 0, "G": 0]
//
//    init?(strand: String){
//        //In case there an different letter the init return an ERROR.
//        for each in strand{
//            switch each{
//                // in case theres the nucleotide in the sequence + 1 will be add
//            case "A": sequence["A"] = (sequence["A"] ?? 0) + 1
//            case "T": sequence["T"] = (sequence["T"] ?? 0) + 1
//            case "C": sequence["C"] = (sequence["C"] ?? 0) + 1
//            case "G": sequence["G"] = (sequence["G"] ?? 0) + 1
//            default: return nil
//            }
//        }
//    }
//
//    func count(_ nucleotide: String) -> Int {
//        // in the dict "sequence" access the valor "nucleotide, in case theres no valor, return: 0
//        return sequence[nucleotide] ?? 0
//    }
//
//    func counts() -> [String: Int] {
//        return sequence
//    }
//}
//
//let dna = DNA(strand: "AAAAAGTC")!
//print(dna.counts())
//print(dna.count("T"))


//---------------- Raindrops
//https://exercism.org/tracks/swift/exercises/raindrops/edit

//class Raindrops {
//    var num: Int
//
//    init(_ num: Int){
//        self.num = num
//    }
//
//    var sounds: String {
//        var piecesOfSounds: [String] = []
//        if num.isMultiple(of: 3){
//            piecesOfSounds.append("Pling")
//        }
//        if num.isMultiple(of: 5) {
//            piecesOfSounds.append("Plang")
//        }
//        if num.isMultiple(of: 7){
//            piecesOfSounds.append("Plong")
//        }
//        if piecesOfSounds.isEmpty{
//            return String(num)
            //converting Int in String to conform with the return
//        }
//
//        return piecesOfSounds.joined(separator: "")
//     }
//}

//print(Raindrops(30).sounds)


//----------------- Binary Search
//https://exercism.org/tracks/swift/exercises/binary-search
//Solution goes in Sources
//class BinarySearch{
//    var list: [Int]
//    var middle: Int
//
//    init(_ list: [Int]) throws {
//        guard list.sorted() == list else {
//             throw BinarySearchError.unsorted
//        }
//        self.list = list
//        middle = list.count / 2
//    }
//
//    func searchFor(_ number : Int) -> Int? {
//            var startList = 0
//            var endList = list.count - 1
//
//            while startList <= endList {
//                middle = (startList + endList) / 2
//
//                if number == list[middle] {
//                    return middle
//                }
//
//                if number > list[middle]{
//                    startList = middle + 1
//
//                }
//
//                if number < list[middle]{
//                    endList = middle - 1
//
//                }
//            }
//            return nil
//        }
//}
//
//enum BinarySearchError : Error {
//    case unsorted
//}
//
//
//let binarySearch = try BinarySearch([1, 3, 4, 6, 8, 9, 11])
//print(binarySearch.searchFor(3)!)

///MARK: ---------------------------Circular Buffer
//https://exercism.org/tracks/swift/exercises/circular-buffer

//enum CircularBufferError: Error {
//    case bufferEmpty, bufferFull
//}
//
//struct CircularBuffer<T> {
//    private let capacity: Int
//    private var buffer: [T] = []
//
//    init(capacity: Int) {
//        self.capacity = capacity
//    }
//
//    mutating func write(_ element: T) throws {
//        guard buffer.count < capacity else {
//            throw CircularBufferError.bufferFull
//        }
//
//        buffer.append(element)
//    }
//
//    mutating func read() throws -> T {
//        guard !buffer.isEmpty else {
//            throw CircularBufferError.bufferEmpty
//        }
//
//        return buffer.removeFirst()
//    }
//
//    mutating func clear() {
//        buffer = [T]()
//    }
//
//    mutating func overwrite(_ element: T) {
//        if buffer.count < capacity {
//            try? write(element)
//        } else {
//            buffer.removeFirst()
//            buffer.append(element)
//        }
//    }
//}
//
//var circularBuffer = CircularBuffer<Any>(capacity:3)
//print(try circularBuffer.read())
//print(try circularBuffer.write(2))
//print(circularBuffer.overwrite("A"))


///MARK:  ----------------Clock
//https://exercism.org/tracks/swift/exercises/clock/edit

//struct Clock: Equatable, CustomStringConvertible {
//
//    var description: String //Property to print the string format
//    var hours: Int
//    var minutes: Int
//
//    init(hours: Int = 0, minutes: Int = 0) {
//        var hours = (hours + minutes / 60) % 24
//        var minutes = minutes % 60
//                if minutes < 0 {
//                    minutes += 60
//                    hours -= 1
//                }
//                if hours < 0 {
//                    hours += 24
//                }
//        self.hours = hours
//        self.minutes = minutes
//
//        self.description = String(format: "%02d:%02d", hours, minutes) //To print the follow format "00:00"
//    }
//
//    func add(minutes: Int) -> Clock {
//        return Clock(hours: self.hours, minutes: self.minutes + minutes)
//    }
//
//    func subtract(minutes: Int) -> Clock {
//        return Clock(hours: self.hours, minutes: self.minutes - minutes)
//    }
//}
//
//
//let clockMinuts = Clock(hours: 3, minutes: 0)
//print(clockMinuts.description)

///MARK: ---------------------- Collatz Conjecture
//https://exercism.org/tracks/swift/exercises/collatz-conjecture/edit
//class CollatzConjecture {
//    var number: Int = 0
//
//    static func steps(_ number: Int) throws -> Int {
//        guard number > 0 else {
//            throw CollatzConjectureError.isNotPostive
//        }
//
//        var finalResult: Int = number
//        var count: Int = 0
//
//        while finalResult != 1 {
//            if finalResult % 2 == 0 {
//                finalResult = finalResult/2
//                count += 1
//            } else {
//                finalResult = (finalResult * 3) + 1
//                count += 1
//            }
//        }
//        return count
//    }
//}
//
//enum CollatzConjectureError: Error {
//    case isNotPostive
//}
//
//var collatzConjecture = CollatzConjecture()
//print(try CollatzConjecture.steps(1))

///MARK: ---------------------- Diamond
///https://exercism.org/tracks/swift/exercises/diamond

//struct Diamond {
//    static func makeDiamond(letter: Character) -> [String] {
//        let alphabet: [Character] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
//        guard let index = alphabet.firstIndex(of: letter) else { return [] }
//        var row = Array(repeating: " " as Character, count: index+1) //Creating the row
//        var diamond = Array(repeating: row, count: index+1) //Creating the square row
//        for each in 0...index {
//            diamond[each][index-each] = alphabet[each]
//        }
//        diamond = diamond.map{each in each + Array(each.dropLast().reversed()) }
//        diamond.append(contentsOf: diamond.dropLast().reversed())
//
//        return diamond.map { String($0) }
//    }
//}
//
//print(Diamond.makeDiamond(letter: "C"))

///MARK: ---------------------Flatten Array
//https://exercism.org/tracks/swift/exercises/flatten-array
//
//func flattenArray<T>(_ nestedList: [Any?]) -> [T] {
//    var newList: [T] = []
//    for element in nestedList {
//        if let sublist = element as? T {
//            newList.append(sublist)
//        } else if let item  = element as? [Any]{
//            newList.append(contentsOf: flattenArray(item)) //access nestedList if for in loop
//        }
//    }
//    return newList
//}

///Mark: --------------------ISBN Verifier
///https://exercism.org/tracks/swift/exercises/isbn-verifier

//class IsbnVerifier{
//    static func isValid(_ isbn: String) -> Bool {
//        var isbn = isbn
//        if isbn.isEmpty || isbn.count < 10 || isbn.count > 13 { return false }
//        if !isbn.last!.isNumber && isbn.last != "X" { return false }
//
//        let last = isbn.removeLast()
//        var values = isbn.filter{$0.isNumber}.enumerated().compactMap { return $1.wholeNumberValue! }
//        values.append(Int(String(last)) ?? 10)
//        if values.count != 10 { return false }
//        let result = values.enumerated().compactMap { $1 * (10 - $0) }.reduce(0,+)
//
//        return result % 11 == 0
//    }
//}
//
//
//print(IsbnVerifier.isValid("3-598-21507-X"))


// MARK: ------------------- Kindergarten Garden
///https://exercism.org/tracks/swift/exercises/kindergarten-garden
//
//enum Plant: Character {
//    case grass = "G"
//    case clover = "C"
//    case radishes = "R"
//    case violets = "V"
//}
//
//private let defaultChildren = [ "Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry" ]
//
//class Garden {
//    private let rows: [String]
//    private let children: [String]
//
//    init(_ diagram: String, children: [String] = defaultChildren) {
//        rows = diagram.components(separatedBy: "\n")
//        self.children = children.sorted()
//    }
//
//    func plantsForChild(_ child: String) -> [Plant] {
//        // Finding the index for the children in the collection.
//        guard let indexKid = children.firstIndex(of: child) else {
//            return []
//        }
//        var plants = [Plant]()
//        for each in rows{
//            let indexPlant = each.index(each.startIndex, offsetBy: indexKid * 2)
//
//            if let plant = Plant(rawValue: each[indexPlant]) {
//                plants.append(plant)
//            }
//
//            if let plant = Plant(rawValue: each[each.index(after: indexPlant)]) {
//                plants.append(plant)
//            }
//        }
//
//        return plants
//    }
//}
//
//let garden = Garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
//print(garden.plantsForChild("Alice"))


//MARK: -------------------- Phone Number
//https://exercism.org/tracks/swift/exercises/phone-number/edit

/*let startingNumber = "2234567890"
 let expected = "2234567890"*/
//(NXX)-NXX-XXXX
//where N is any digit from 2 through 9 and X is any digit from 0 through 9.

//class PhoneNumber {
//    let invalidCode = "0000000000"
//    var phoneNumber: String
//
//    init(_ num: String) {
//        self.phoneNumber = num
//    }
//
//    var number: String {
//        let caracheters: Set<Character> = [")", "(", " ", "-", "."]
//        let filteredNumber = phoneNumber.filter { !caracheters.contains($0) }
//        let countNumber = filteredNumber.count
//
//        if countNumber < 10 || countNumber > 11 {
//            return invalidCode
//        }
//        if countNumber == 11 {
//            if filteredNumber.starts(with: "1") {
//                return String(filteredNumber.dropFirst())
//            } else {
//                return invalidCode
//            }
//        } else { return filteredNumber}
//    }
//
//    var areaCode: String {
//        return String(self.number.prefix(3))
//    }
//
//    var exchangeCode: String{
//        return String(self.number.dropFirst(3).prefix(3))
//    }
//    var subscriberNumber: String{
//        return String(self.number.suffix(4))
//    }
//}
//
//extension PhoneNumber: CustomStringConvertible {
//    var description: String {
//        return "(\(areaCode)) \(exchangeCode)-\(subscriberNumber)"
//    }
//}

//let result = PhoneNumber("2234567890")
//print(result.number)
//print(result.areaCode)
//print(result.exchangeCode)
//print(result.subscriberNumber)
//print(result.description)

//MARK: -------------------- Protein Translation
//https://exercism.org/tracks/swift/exercises/protein-translation

//enum ProteinTranslationError : Error {
//    case invalidCodon
//}
//
//class ProteinTranslation {
//    static func translationOfCodon(_ codon: String) throws -> String {
//        switch codon {
//        case "AUG":
//            return "Methionine"
//        case "UUU", "UUC":
//            return "Phenylalanine"
//        case "UUA", "UUG":
//            return "Leucine"
//        case "UCU", "UCC", "UCA", "UCG":
//            return "Serine"
//        case "UAU", "UAC":
//            return "Tyrosine"
//        case "UGU", "UGC":
//            return "Cysteine"
//        case "UGG":
//            return "Tryptophan"
//        case "UAA", "UAG", "UGA":
//            return "STOP"
//        default:
//            throw ProteinTranslationError.invalidCodon
//        }
//    }
//
//    static func translationOfRNA(_ rna: String) throws -> [String] {
//        var rna = rna
//        var result: [String] = []
//
//        while rna.count >= 3 {
//            let codon = try translationOfCodon(String(rna.prefix(3)))
//            if codon != "STOP" {
//                result.append(codon)
//                rna.removeFirst(3)
//            } else {
//                return result
//            }
//        }
//        return result
//    }
//}

    
//    static func translationOfRNA(_ aminoAcid: String) throws -> [String] {
//        let proteins = try stride(from: 0, to: aminoAcid.count, by: 3).map { each -> String in
//            let start = aminoAcid.index(aminoAcid.startIndex, offsetBy: each)
//            let end = aminoAcid.index(start, offsetBy: 3)
//            let codon = String(aminoAcid[start..<end])
//            return try translationOfCodon(String(codon))
//        }
//        if let stop = proteins.firstIndex(of: "STOP") {
//            return Array(proteins[..<stop])
//        }
//
//        return proteins
//    }
//}

//print(try ProteinTranslation.translationOfCodon("UAG"))
//print(try ProteinTranslation.translationOfRNA("AUGUUUUGG"))

//MARK: --------------- Perfect Numbers
//https://exercism.org/tracks/swift/exercises/perfect-numbers/edit


//class NumberClassifier {
//    let number: Int
//    init(number: Int){ self.number = number }
//
//    enum classifier {
//        case perfect
//        case abundant
//        case deficient
//    }
//
//    var classification: classifier {
//        let divisors = Array(1 ..< number).filter({number % $0 == 0})
//        let aliquotSum = divisors.reduce(0, { $0 + $1})
//        let classifier : classifier
//        if aliquotSum == number {
//            classifier = .perfect
//        } else if aliquotSum > number {
//            classifier = .abundant
//        } else {
//            classifier = .deficient
//        }
//        return classifier
//    }
//}
// ------------ My version --------
//    var classification: classifier {
//        let sum = sumOfFactores(num: number)
//        if number % 2 != 0 {
//            return classifier.deficient
//        } else if sum > number {
//            return classifier.abundant
//        } else if sum < number  {
//            return classifier.deficient
//        } else {
//                return classifier.perfect
//        }
//    }
//    private func sumOfFactores( num: Int) -> Int {
//        var factors: String = ""
//        var sumOfFactors: Int = 0
//        for each in 1...number {
//            guard number % each == 0  else {continue}
//            factors += each == 1 ? "1" : ", \(each)"
//        }
//        let stringTest = factors.components(separatedBy: ",")
//
//        var numbers: [Int] = []
//        for each in stringTest {
//            if let number = Int(each.trimmingCharacters(in: .whitespaces)) {
//                numbers.append(number)
//            }
//        }
//
//        for each in numbers {
//            guard number != each  else {continue}
//            sumOfFactors += each
//        }
//        return sumOfFactors
//    }
//}


//let numberClassifier = NumberClassifier(number: 15)
//print(numberClassifier.classification)

//MARK: ------------------- Proverb
////https://exercism.org/tracks/swift/exercises/proverb
//
//extension Array where Element == String {
//    func recite() -> String {
//        var result = ""
//        for (index, element) in self.enumerated() { // getting the index and elemente for each item in an array
//            if index < self.count - 1 {
//                print(self.count)
//                result.append("For want of a \(element) the \(self[index + 1]) was lost.\n")
//            } else {
//                result.append("And all for the want of a \(self[0]).")
//            }
//        }
//        return result
//    }
//}
//
//
//
//let actualResult = ["pin", "gun", "soldier", "battle"].recite()


//MARK: ----------------------- Queen Attack
//https://exercism.org/tracks/swift/exercises/queen-attack

//enum InitError: Error {
//    case sameSpace
//    case incorrectNumberOfCoordinates
//    case invalidCoordinates
//}
//
//class Queens {
//    var black: [Int]
//    var white: [Int]
//
//    //validation of coordinates
//    init(white: [Int] = [0,3], black: [Int] = [7,3]) throws { //using throws inside an INIT
//        if black.count != 2 || white.count != 2 {
//            throw InitError.incorrectNumberOfCoordinates
//        }
//        if black.contains(where: { $0 < 0 || $0 > 7}) || white.contains(where: { $0 < 0 || $0 > 7}) {
//            throw InitError.invalidCoordinates
//        }
//        if black == white {
//            throw InitError.sameSpace
//        }
//
//        self.black = black
//        self.white = white
//    }
//
//    var canAttack: Bool {
//        if black[0] == white[0] || black[1] == white[1] {
//            return true
//        }
//        if abs(black[0] - white[0]) ==  abs(black[1] - white[1]) || abs(black[0] - white[1]) == abs(black[1] - white[0]) {
//            return true
//        }
//        return false
//    }
//}
//
//extension Queens: CustomStringConvertible {
//    var description: String {
//        let line = Array(repeating: "_", count: 8)
//        var chessBoard = Array(repeating: line, count: 8)
//
//        chessBoard[black[0]][black[1]] = "B"
//        chessBoard[white[0]][white[1]] = "W"
//
//        return chessBoard.map { $0.joined(separator: " ") }.joined(separator: "\n")
//    }
//}
//
//
//let queenAttack = try Queens(white: [3,4], black: [4,3])
//queenAttack.canAttack
//print(queenAttack.description)

//MARK: ----------------- Robot Name
//https://exercism.org/tracks/swift/exercises/robot-name

//class Robot{
//    var name = String() //Creating an empty string
//
//    init() { // iniciando clas com valor da function
//        self.name = generateName()
//    }
//
//    private func generateName() -> String {
//        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//        let letter1 = letters.randomElement()!
//        let letter2 = letters.randomElement()!
//        let number = Int.random(in: 100...999)
//        return String(letter1) + String(letter2) + String(number)
//    }
//
//
//    func resetName() {
//        self.name = generateName()
//    }
//}
//
//let robot = Robot()
//print(robot.name)
//print(robot.resetName())

//MARK: -------------------Robot Simulator
//https://exercism.org/tracks/swift/exercises/robot-simulator
//class SimulatedRobot {
//    var bearing: Orient
//    var coordinates: [Int]
//
//    init() {
//        self.bearing = .north
//        self.coordinates = [0, 0]
//    }
//
//
//    func orient(_ direction: Orient) {
//        bearing = direction
//    }
//
//    // --------------- Actions
//    enum Orient {
//        case east, north, south, west
//    }
//
//    func turnRight()  {
//        switch bearing {
//        case .north: bearing = .east
//        case .east: bearing = .south
//        case .south: bearing = .west
//        case .west: bearing = .north
//        }
//    }
//
//    func turnLeft()  {
//        switch bearing {
//        case .north: bearing = .west
//        case .west: bearing = .south
//        case .south: bearing = .east
//        case .east: bearing = .north
//        }
//    }
//
//    func advance() {
//        switch bearing {
//        case .north: coordinates[1] += 1
//        case .south: coordinates[1] -= 1
//        case .west: coordinates[0] -= 1
//        case .east: coordinates[0] += 1
//        }
//    }
//
//    // --------------- position
//    func at(x: Int, y: Int) {
//        coordinates[0] = x
//        coordinates[1] = y
//    }
//
//    // --------------- instructions
//    enum actions {
//        case turnRight, advance, turnLeft
//    }
//
//    func instructions(_ directions: String) -> [actions] {
//        var instruction = [actions]()
//        for each in directions {
//            switch each {
//            case "L": instruction.append(.turnLeft)
//            case "R": instruction.append(.turnRight)
//            default:
//                instruction.append(.advance)
//            }
//        }
//        return instruction
//    }
//
//    // --------------- place
//
//    func place(x: Int, y: Int, direction: Orient) {
//        bearing = direction
//        at(x: x, y: y)
//    }
//
//    // --------------- evaluate
//    func evaluate(_ actionsText: String) {
//        let instructions = instructions(actionsText)
//        for each in instructions{
//            switch each {
//            case .turnLeft:
//                turnLeft()
//            case .turnRight:
//                turnRight()
//            case .advance:
//                advance()
//            }
//        }
//    }
//}
//
//
//let robot = SimulatedRobot()
//
//robot.place(x: 0, y: 0, direction: .north)
//robot.evaluate("LAAARALA")
//robot.bearing
//robot.coordinates


///Mark:  ------------------ Teste

