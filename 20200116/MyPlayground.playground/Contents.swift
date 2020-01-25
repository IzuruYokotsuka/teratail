import UIKit

var str = "Hello, playground"
let date=[2,7,1,1,5,7,0,7,5,8,4,9,9,0,9,6,5,2,3,2]
let search = [7, 5, 8, 4, 9, 9, 0, 9, 6, 5]

let date_str = "\(date)"
let search_str = search.map { String($0) }
print(date_str)

