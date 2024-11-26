
import Foundation


func getVersionSwift(){
        #if swift(>=5.11)
        print("Using Swift 5.11 or later")
        #elseif swift(>=5.10)
        print("Using Swift 5.10 or later")
        #elseif swift(>=5.9)
        print("Using Swift 5.9 or later")
        #elseif swift(>=5.8)
        print("Using Swift 5.8 or later")
        #elseif swift(>=5.7)
        print("Using Swift 5.7 or later")
        #elseif swift(>=5.6)
        print("Using Swift 5.6")
        #elseif swift(>=5.5)
        print("Using Swift 5.5")
        #elseif swift(>=5.4)
        print("Using Swift 5.4")
        #elseif swift(>=5.3)
        print("Using Swift 5.3")
        #elseif swift(>=5.2)
        print("Using Swift 5.2")
        #elseif swift(>=5.1)
        print("Using Swift 5.1")
        #elseif swift(>=5.0)
        print("Using Swift 5.0")
        #else
        print("Using a version earlier than Swift 5.0")
        #endif
}

getVersionSwift()
