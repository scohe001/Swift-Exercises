import Foundation

let abbreviations = [
    "BFF" : "best friend forever",
    "IDK" : "I don't know",
    "JK" : "just kidding",
    "TMI" : "too much information",
    "TTYL" : "talk to you later",
]
var test = "IDK if you like me or my BFF. I'm JK of course, that'd be TMI. TTYL!"

for (acr, expanded) in abbreviations {
    while let r = test.rangeOfString(acr) {
        test.replaceRange(r, with: expanded)
    }
}

print(test)