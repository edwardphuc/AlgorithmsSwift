var numbers = [1, 5, 6, 3, 6, 50, 25]

func SelectionSort(arraynumber : inout [Int]) -> [Int] {
    for i in 0..<(arraynumber.count-1) {
        for j in i+1..<(arraynumber.count) {
            if arraynumber[i] > arraynumber[j] {
               (arraynumber[i], arraynumber[j]) = (arraynumber[j], arraynumber[i])
            }
        }
    }
    return arraynumber
}
let arraySort = SelectionSort(arraynumber: &numbers)
print(arraySort)
