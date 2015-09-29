// Playground - noun: a place where people can play

import UIKit

// MARK: - Credit Cards

enum CardType: String {
    case None = "None"
    case Visa = "Visa"
    case AmericanExpress = "American Express"
    case Mastercard = "Mastercard"
    case Discover = "Discover"
    
    static let allValues = [Visa, AmericanExpress, Mastercard, Discover]
    
    private func regularExpression() -> NSRegularExpression {
        var regex: NSRegularExpression
        regex = try! NSRegularExpression(pattern: ".*", options: [])

        switch self {
        case .Visa:
            do {
                regex = try NSRegularExpression(pattern: "^4[0-9]{12}(?:[0-9]{3})?$", options: [])
            } catch {
                print("Error")
            }
        case .AmericanExpress:
            do {
                regex = try NSRegularExpression(pattern: "^3[47][0-9]{13}$", options: [])
            } catch {
                print("Error")
            }
        case .Mastercard:
            do {
                regex = try NSRegularExpression(pattern: "^5[1-5][0-9]{14}$", options: [])
            } catch {
                print("Error")
            }
        case .Discover:
            do {
                regex = try NSRegularExpression(pattern: "^6(?:011|5[0-9]{2})[0-9]{12}$", options: [])
            } catch {
                print("Error")
            }
        default:
            do {
                regex = try NSRegularExpression(pattern: ".*", options: [])
            } catch {
                print("Error")
            }
        }
        return regex

    }
    
    func isValidFor(cardNumber: String) -> Bool {
        let re = self.regularExpression()
        let range = NSRange(0..<cardNumber.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let matches = re.numberOfMatchesInString(cardNumber, options: [], range:range)
        return matches > 0
    }
    
    static func from(cardNumber: String) -> CardType {
        for type in self.allValues {
            if type.isValidFor(cardNumber) {
                return type
            }
        }
        
        return None
    }
}

// MARK: - Testing

CardType.from("4242424242424242").rawValue
CardType.from("4012888888881881").rawValue
CardType.from("4000056655665556").rawValue

CardType.from("5555555555554444").rawValue
CardType.from("5200828282828210").rawValue
CardType.from("5105105105105100").rawValue

CardType.from("378282246310005").rawValue
CardType.from("371449635398431").rawValue

CardType.from("6011111111111117").rawValue
CardType.from("6011000990139424").rawValue

CardType.from("3566002020360505").rawValue

