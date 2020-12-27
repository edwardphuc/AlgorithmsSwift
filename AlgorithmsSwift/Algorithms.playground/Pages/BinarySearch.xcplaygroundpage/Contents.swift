// Searching is very important when it comes to programming.  Doing it efficiently is when it comes dealing with large sets of data is quite important as well.  For example, imagine a company like Facebook having huge sets of data.  If searching for a contact in your friends list was slow, user experience would be affected dramatically.
var numbers = [1, 2, 4, 6, 9, 10, 5, 20, 50, 100]
var arrayhundred = [Int]()
for i in 0...100 {
    arrayhundred.append(i)
}

// binary search
func BinarySearch(_ value: Int,_ numbersarray: [Int]) -> Bool {
    print(numbersarray)
    var left = 0
    var right = numbersarray.count - 1
    while left <= right {
        let middleindex = (left + right)/2
        let middlevalue = numbersarray[middleindex]
        
        print("left index: \(left), right index: \(right), middle index: \(middleindex), array: [\(numbersarray[left]), \(numbersarray[right])]")
        
        if value == middlevalue {
            return true
        }
        
        if value < middlevalue {
            right = middleindex - 1
        }
        
        if value > middlevalue {
            left = middleindex + 1
        }
        
    }
    return false
}
numbers.sort()
arrayhundred.sort()

print(BinarySearch(20, arrayhundred))
print(BinarySearch(5, numbers))


// simple search
func linearSearch(_ value: Int,_ numberarray: [Int]) -> Bool {
    for num in numbers {
        if num == value {
            return true
        }
    }
    return false
}

print(linearSearch(4, numbers))
