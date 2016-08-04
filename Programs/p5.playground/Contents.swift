import Foundation

let ch = "*"
let height = 5
let trunkWidth = 9
let leavesWidth = 15

for row in 0..<((leavesWidth+1)/2) {
    if row < (leavesWidth / 2) {
        for leaves in 0..<((leavesWidth/2) - row) {
            print(" ", terminator:"")
        }
    }
    for leaves in 0..<((row * 2) + 1) {
        print("*", terminator:"")
    }
    print()
}

for row in 1...height {
    for space in 1...((leavesWidth - trunkWidth) / 2) {
        print(" ", terminator:"")
    }
    for t in 1...trunkWidth {
        print("*", terminator:"")
    }
    print()
}