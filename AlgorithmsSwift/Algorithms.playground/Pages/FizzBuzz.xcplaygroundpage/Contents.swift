// The general idea behind this algorithm is to run through a list of numbers and print Fizz when divisible by 3, Buzz when divisible by 5, and FizzBuzz when divisible by both 3 and 5.
var numbers = [1, 2, 3, 4, 5, 15, 18, 20, 30]
for num in numbers {
    if num % 3 == 0 && num % 5 == 0 {
        print("\(num) FizzBuzz")
    } else if num % 3 == 0 {
        print("\(num) Fizz")
    } else if num % 5 == 0 {
        print("\(num) Buzz")
    } else {
        print(num)
    }
}
