import Foundation

func maskify(_ string:String) -> String {
    let string_length = string.count

    if string_length <= 4 {
        return string
    }

    var masked = ""
    let sub_length = string_length - 5

    for _ in 0...sub_length {
        masked.append("#")
    }

    return masked + string.suffix(4)
}