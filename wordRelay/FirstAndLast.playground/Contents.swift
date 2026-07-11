import UIKit

let array: [String] = []
let 원소_first_empty = array.first

print(원소_first_empty)

//첫번 째 단어
let names: [String] = ["Apple", "Elsa"]
print(names.first?.last)

if names.first?.last == names.last?.first{
    print("성공")
}else{
    print("실패")
}
