//MIT License
//
//Copyright (c) 2016 Dallas Johnson
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.
//
//  Log.swift

import Foundation

public struct Log {
    public static var errorEmoji = "🔥"
    public static var warningEmoji = "⚠️"
    public static var infoEmoji = "ℹ️"
    
    private static func printLog(emoji: String, format: [Any]){
        //        #if DEBUG
        let logStrings = [emoji] + format.map { String($0) }
        let logString = logStrings.joinWithSeparator(" ")
        print(logString)
        //        #endif
    }
    
    public static func error(format: Any...){
        printLog(errorEmoji, format: format)
    }
    
    public static func warning(format: Any...){
        printLog(warningEmoji, format: format)
    }
    
    public static func info(format: Any...){
        printLog(infoEmoji, format: format)
    }
}
