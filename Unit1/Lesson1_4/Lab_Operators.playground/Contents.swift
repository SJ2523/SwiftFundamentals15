/*:
 **Lab - Operators**
 
 Create two constants, `width` and `height`, with values of 100 and 250, respectively. Create an `area` constant that is the result of multiplying the two previous constants together, and print out the result.
 */
// Basic arithmetic
// Compound assignment
// Order of operations
// Modulo
// Numeric Type Conversion
/*:
 Create a `perimeter` constant whose value equals `width` plus `width` plus `height` plus `height`, then print out the result.
 */
let width = 5
let height = 7
let perimeter = width + width + height + height
print("the perimeter is \(perimeter)")


/*:
 Print out what you think 10 + 2 * 5 evaluates to. Then print out the actual expression (i.e. `print(10 + 2 * 5)`)
 */
let result = 10+2*5
print("10 + 2 * 5")
print("equals")
print(result)


/*:
 In a separate statement, add in the necessary parentheses so that addition takes place before multiplication.
 */
let result = (10 + 2 ) * 5

/*:
 Create a constant, `divisionResult` that is the result of 10 divided by 3, and print the value.
 */
let divisionResult = Double(10) / Double(3)
print("The result of 10 divided by 3 is \(divisionResult)")

/*:
 Create a constant, `moreAccurateResult`, that is also the result of 10 divided by 3, but includes the repeating decimal. Print this value.
 */
let moreAccurateResult = 10.0 / 3.0
print(string(format: "The resultof 10 divided by 3 is %.15f" moreAccurateResult))

/*:
 Given the value pi (3.1415927), create a `radius` constant with a value of 5.0, then calculate the diameter and circumference of the circle using the following equations, and print the results:
let pi= 3.1415927 
let radius = 5.0
let diameter = 2 * radius
let circumference = 2 * pi * radius

*diameter = 2 * radius*
 
 *circumference = 2 * pi * radius.*
 */

print("The diameter of the circle is \(diameter)")
print("The cirecumference of the circle is \(circumference)")


/*:
 Declare a variable whose value begins at 10. Using addition, update the value to 15 using the compound assignment operator. Using multiplication, update the value to 30 using compound assignment. Print out the variable's value after each assignment.
 */
var value = 10

value += 5
value *= 2

print(value)


/*:
 Create an integer constant with a value of 10, and a double constant with a value of 3.2. Cast the `Double` to an `Int`, then multiply it by the integer constant and print out the value.
 */
let intConstant = 10
let DbConstant = 3.2
let CstDble= int(DbConstant)

let result = intConstant * CstDble

print(result)

/*:
 Create an integer constant. Its value should be equal to the remainder of 12 divided by 5. Do this using the modulus operator.
 */
let Remain = 12 % 5
print(Remain)
