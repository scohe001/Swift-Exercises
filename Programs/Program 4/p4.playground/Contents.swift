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
    //func range(of: String, options: String.CompareOptions, range: Range<String.Index>?, locale: Locale?)
    while let r = test.range(of: acr) {
        test.replaceSubrange(r, with: expanded)
    }
}

print(test)
