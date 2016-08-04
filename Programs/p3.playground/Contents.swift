func max(list : [Int]) -> Int {
    var biggest = 0
    for indx in 0..<list.count {
        if list[indx] > list[biggest] {
            biggest = indx
        }
    }
    return biggest
}

var names = ["Freeman", "Rawls", "Gurley"]
var yards = [153, 169, 159]
var cnt = 1

while yards.count != 0 {
    var biggest = max(yards)
    print("\(cnt). \(names[biggest]): \(yards[biggest])")
    cnt += 1
    names.removeAtIndex(biggest)
    yards.removeAtIndex(biggest)
}



/*if yards[0] > yards[1] && yards[0] > yards[2] {
    print("1. \(names[0]): \(yards[0])");
    if(yards[1] > yards[2]) {
        print("2. \(names[1]): \(yards[1])")
        print("3. \(names[2]): \(yards[2])")
    } else {
        print("2. \(names[2]): \(yards[2])")
        print("3. \(names[1]): \(yards[1])")
    }
} else if yards[1] > yards[2] {
    print("1. \(names[1]): \(yards[1])");
    if(yards[0] > yards[2]) {
        print("2. \(names[0]): \(yards[0])")
        print("3. \(names[2]): \(yards[2])")
    } else {
        print("2. \(names[2]): \(yards[2])")
        print("3. \(names[0]): \(yards[0])")
    }
} else {
    print("1. \(names[2]): \(yards[2])");
    if(yards[0] > yards[1]) {
        print("2. \(names[0]): \(yards[0])")
        print("3. \(names[1]): \(yards[1])")
    } else {
        print("2. \(names[1]): \(yards[1])")
        print("3. \(names[0]): \(yards[0])")
    }
}*/
