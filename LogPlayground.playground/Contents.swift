
import UIKit

let error = NSError(domain: "CustomErrorString", code: 1, userInfo: nil)
let value1 = 34
let value2 = 31.78

/*: 
 ## Basic usage
 After adding Log.swift to your project the `Log` functions will be available as seen below.
 You can use the same format that you're used to with `print` statements.
 */
Log.error("Some error occurred: ", error)
//: Output: 🔥 Some error occurred:  Error Domain=CustomErrorString Code=1 "(null)"
Log.warning("Sample warning with values :", 34, NSDate())
//: Output: ⚠️ Sample warning with values : 34 2016-04-17 00:30:02 +0000
Log.info("String concatenation style. Value: \(34) and another value: \(value2)")
//: Output: ℹ️ String concatenation style. Value: 34 and another value: 31.78

/*: 
 ## How about changing an emoji for a given log type?
 Just assign a different emoji to the matching static var and all subsequent calls will use the new one.
 */
Log.errorEmoji = "😱"
Log.error("Another error occurred: ", error)
//: Output: 😱 Another error occurred:  Error Domain=CustomErrorString Code=1 "(null)"

/*: ## Future Directions/Suggestions for use
 Because it's not an external dependency you just edit it to suit your needs and customise
 */