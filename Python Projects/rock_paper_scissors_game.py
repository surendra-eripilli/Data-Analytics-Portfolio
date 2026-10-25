import random
def start_game():
    print("WELCOME TO ROCK_PAPER_SCISSORS GAME")
    print("Enter your choice: ")
    print("Choice 1: ROCK")
    print("Choice 2: PAPER")
    print("Choice 3: SCISSORS")
    user_choice= int(input("Select any option(1-3): "))
    machine_choice= random.randint(1, 3)
    print("Option choosed by machine: ", end=" ")
    if machine_choice== 1:
        print("ROCK")
    elif machine_choice== 2:
        print("PAPER")
    else:
        print("SCISSORS")
    if user_choice== machine_choice:
        print("WOW!!! It's a TIE")
    elif user_choice== 1 and machine_choice== 3:
        print("Congrats!! You won this round")
    elif user_choice== 2 and machine_choice== 1:
        print("Congrats!! You won this round")
    elif user_choice== 3 and machine_choice== 2:
        print("Congrats!! You won this round")
    else:
        print("Sorry, You lost this round")
    play_again= input("Want to play again?(yes/no): ")
    if play_again== "yes":
        start_game()
    else:
        print("Thank you for playing ROCK PAPER SCISSORS")
start_game()