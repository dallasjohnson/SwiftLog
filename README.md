# Log
## A simple log helper for Swift

This little helper makes it a little easier to scan through your logs by prefixing the outputs with an emoji.

The intention is that you modify it to suit your needs for each project. For this reason rather than import it via CocoaPods or Carthage, and then have to `import "Log"` at the top of each file, just manually include the `Log.swift` in your project and modify it as needed.

```swift
Log.error("Some error occurred: ", error)
//: Output: 🔥 Some error occurred:  Error Domain=CustomErrorString Code=1 "(null)"
Log.warning("Sample warning with values :", 34, NSDate())
//: Output: ⚠️ Sample warning with values : 34 2016-04-17 00:30:02 +0000
Log.info("String concatenation style. Value: \(34) and another value: \(value2)")
//: Output: ℹ️ String concatenation style. Value: 34 and another value: 31.78
/*: 
 Just assign a different emoji to the matching static var and all subsequent calls will use the new one.
 */
Log.errorEmoji = "😱"
Log.error("Another error occurred: ", error)
//: Output: 😱 Another error occurred:  Error Domain=CustomErrorString Code=1 "(null)"

```

Because you have the `Log.swift` in your project it's easy to just add extra log types as needed or include extra logic to help filter by Log level or DEBUG flags etc.
