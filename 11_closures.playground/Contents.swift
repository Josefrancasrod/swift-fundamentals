import UIKit

let names = ["Jose", "Francisco", "Carlos", "Ale",]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
backward("Jose", "Francisco")

var reversedNames = names.sorted(by: backward)

/*
 
 { (params) -> return type in
    //Código del closure
 }
 
 **/

reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in  return s1 > s2})
reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
reversedNames = names.sorted(by: {$0>$1})
reversedNames = names.sorted(by: >)

