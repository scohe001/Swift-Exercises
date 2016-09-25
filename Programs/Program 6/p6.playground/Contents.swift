import Foundation

func roll() -> Int {
    return Int(arc4random_uniform(6) + 1)
}

func turn(player: String, score: Int) -> Int {
    var turnScore: Int = 0
    var r: Int = roll()
    while (turnScore + score) < 100 && turnScore < 17 && r != 1 {
        turnScore += r
        r = roll()
    }
    if r == 1 {
        return score;
    }
    return score + turnScore
}

srandom(UInt32(time(nil)))
//srandom(666)

let p1: String = "Aragorn"
let p2: String = "Legolas"
let WINNING_SCORE: Int = 100

var turn: String = p1
var p1score: Int = 0
var p2score: Int = 0

while p1score < WINNING_SCORE && p2score < WINNING_SCORE {
    if turn == p1 {
        p1score = turn(player: p1, score: p1score)
        turn = p2
    } else {
        p2score = turn(player: p2, score: p2score)
        turn = p1
    }
}

print("Final scores are\n\(p1): \(p1score)\n\(p2): \(p2score)")

if p1score >= WINNING_SCORE {
    print("\(p1) is the winner!!!")
} else {
    print("\(p2) is the winner!!!")
}
