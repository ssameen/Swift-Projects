// Rock, Paper, Scissors

//Define function to input player choice
func getUserChoice(userInput: String) -> String { // check validity of user input
  if ["rock", "paper", "scissors"].contains(userInput){
    return userInput
  }else{
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

// Define function to get computer's choice
func getComputerChoice() -> String {
  return ["rock", "paper", "scissors"].randomElement()!
}

// Define function to compare choices and determine winner
func determineWinner(_ userChoice: String,_ compChoice: String) -> String {
  var decision = "It's a tie"
  switch userChoice{
    case "rock":
    if compChoice == "paper"{
      decision = "The computer won"
      }else if compChoice == "scissors"{
        decision = "The user won"
        }
    case "paper":
    if compChoice == "scissors"{
      decision = "The computer won"
      }else if compChoice == "rock"{
        decision = "The user won"
        }
    case "scissors":
    if compChoice == "rock"{
      decision = "The computer won"
      }else if compChoice == "paper"{
        decision = "The user won"
        }
    default:
    print("Something went wrong")
  }
  return decision
}

//Testing out the game
//Calling the functions and getting choices
//Getting user choice
let userChoice = getUserChoice(userInput: "paper")

//Getting computer choice
let compChoice = getComputerChoice()

//Printing out the choices
print("You threw \(userChoice)")
print("The computer threw \(compChoice)")

//Declare the winner
let winner = determineWinner(userChoice, compChoice)
print(winner)
