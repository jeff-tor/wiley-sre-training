class SimpleCalculator:
    def __init__(self, x, y):

        self.x = x
        self.y = y

    def addition(self):
        print("Sum: ", self.x + self.y)

    def subtraction(self):
        print("Subtracted value: ", self.x - self.y)

    def multiplication(self):
        print("Multiplied value: ", self.x * self.y)

    def division(self):
        print("Divided value: ", self.x / self.y)

set1 = input("Key in 1st value: , or key in quit/exit ").lower()

if set1 == "exit" or set1 == "quit":
    print("Thanks")
    exit()

set2 = input("key in 2nd value: or key in quit/exit ").lower()

if set2 == "exit" or set1 == "quit":
    print("Thanks")
    exit()

set1 = int(set1)
set2 = int(set2)


n1 = SimpleCalculator(set1,set2)

selected_operand = str(input("Enter operation: add, subtract, multiply, divide:, or key in quit/exit "))

if selected_operand == "exit" or selected_operand == "quit":
    print("Thanks")
    exit()

if selected_operand == "add":
    SimpleCalculator.addition(n1)

if selected_operand == "subtract":
    SimpleCalculator.subtraction(n1)

if selected_operand == "multiply":
    SimpleCalculator.multiplication(n1)

if selected_operand == "divide":
    SimpleCalculator.division(n1)
