import UIKit

// MARK: - Katafizzbuzz.

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("fizzbuzz")
    } else if i.isMultiple(of: 3) {
        print("fizz")
    } else if i.isMultiple(of: 5) {
        print("buzz")
    } else {
        print(i)
    }
}

// MARK: - String news in Swift 5

let track = "Nothing Else Matters"
print(#"My favorite tune\song is \#(track)."#)

let hashtag = ##"You can use the Swift "hashtag" #swift in Swift 5."##
print(hashtag)

func doublee(number: Int, returning: (Int) -> Void){
    returning(number * 2)
}

doublee(number: 5) { returning in
    print(returning)
}
