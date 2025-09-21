# number-guessing-game
import random

secret_number = random.randint(1, 100)
print("Welcome to my number guessing game!")
print("im thinking of a number 1 to 100.")
print("Please Choose a Difficulty Level: ")
print("Easy: 10 Chances", "Medium: 5 Chances", "Hard: 3 Chances")
difficulty = input("Insert Choice: ")
if difficulty == "Easy":
    max_attempts = 10
elif difficulty == "Medium":
    max_attempts = 5
elif difficulty =="Hard":
    max_attempts = 3
else:
    print("Invalid choice. Defaulting to Easy mode.")
    max_attempts = 10
attempts = 0
while True:
    try:
        guess = int(input("Guess: "))
        attempts += 1
        if guess < secret_number:
            print("Your guess is too low.")
        elif guess > secret_number:
             print("Your guess is too high.")
        else:
            print(f"you guessed it in {attempts} attempts")
            break
    except ValueError:
            print("Invalid input! Please enter a valid number: ")
    if attempts == max_attempts and guess != secret_number:
        print(f"Out of attempts! The number was {secret_number}.")
        break
