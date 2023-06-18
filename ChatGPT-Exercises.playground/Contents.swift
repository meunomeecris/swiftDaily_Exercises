import Cocoa
import Foundation

//--------Palindrome Checker (Chat GPT)

//func isPalindrom(input: String) -> Bool {
//    let inverseInput =  String(input.reversed())
//    return  inverseInput == input ? true : false
//}
//
//print(isPalindrom(input: "ARARAR"))


//---------- Email Validation
/*
 It must contain the "@" symbol.
 It must have at least one character before the "@" symbol.
 It must have at least one character after the "@" symbol.
 It must have a domain name with at least one "." (dot) character after the "@" symbol.*/
//func emailValidation(email: String) -> Bool {
//    let hasArroba = email.contains("@")
//    let characterAfterArroba = email.last != "@" && email.last != "."
//    let hasDomin = email.contains(".")
//
//    if hasArroba, characterAfterArroba, hasDomin {
//        return true
//    } else {
//        return false
//    }
//
//}
//
//print(emailValidation(email: "meunome.ecriss@gmail.com"))
//
//
//func isValidEmail(_ email: String) -> Bool {
//    let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
//    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
//    return emailPredicate.evaluate(with: email)
//}
//let emailAddress = "test@example.com"
//let isValid = isValidEmail(emailAddress)
//print(isValid)

///MARK: Functions

//enum FunctionsEasyLevelError: Error {
//    case negativeNumber
//}
//
//class FunctionsEasyLevel {
//    func greet(name: String) -> String {
//        return "Hello, \(name)"
//    }
//
//    func isEven(number: Int) -> Bool {
//        return number % 2 == 0 ? true : false
//    }
//
//    func sumOfDigits(positiveNumber: Int) throws -> Int {
//        guard positiveNumber > 0 else {
//            throw FunctionsEasyLevelError.negativeNumber
//        }
//
//        var sum = 0
//        var num = positiveNumber
//        while num > 0 {
//            let digit = num % 10
//            sum += digit
//            num /= 10
//        }
//        return sum
//    }
//
//    func reverseString(word: String) -> String {
//        let reversedCharacter = word.reversed()
//        let reversedString = String(reversedCharacter).lowercased()
//        return  reversedString
//    }
//
//    func factorial(positiveNumber: Int) throws -> Int {
//        guard positiveNumber > 0 else {
//            throw FunctionsEasyLevelError.negativeNumber
//        }
//
//        var num = positiveNumber
//        var sum = num
//
//        while num > 1 {
//            num -= 1
//            sum *= num
//        }
//        return sum
//    }
//}
//
//
//let functionExercises = FunctionsEasyLevel()
//print(functionExercises.greet(name: "Kristen"))
//print(functionExercises.isEven(number: 13))
//print(try functionExercises.sumOfDigits(positiveNumber: 123))
//print(functionExercises.reverseString(word: "Caralho"))
//print(try functionExercises.factorial(positiveNumber: 5))


///MARK: ----------- String Exercises

//class StringExercises {
//    func stringLength(input:String) -> Int {
//        return input.count
//    }
//
//    func convertCase(input: String, toUpperCase: Bool) {
//        if toUpperCase {
//            input.uppercased()
//        } else  {
//            input.lowercased()
//        }
//    }
//
//    func countOccurrences(input: String, char: Character) -> Int {
//        var count = 0
//        for each in input {
//            if each == char {
//                count += 1
//            }
//        }
//        return count
//    }
//
//    func reverseString(input: String) -> String {
//        return String(input.reversed())
//    }
//
//    func isPalindrome(input: String) -> Bool {
//        return reverseString(input: input) == input
//    }
//}
//
//let stringExercises = StringExercises()
//stringExercises.isPalindrome(input: "thaht")


 
