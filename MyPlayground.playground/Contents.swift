func printSum(a: Int, b: Int){
    print(a + b)
}

func add(a: Int, b: Int) -> Int{
    return a + b
}

let printSumClosure = {(a: Int, b: Int) in print(a + b)}
let addClosure = {(a: Int, b: Int) -> Int in return a + b}
