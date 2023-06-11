local function getComputerChoice()
    local choices = { "rock", "paper", "scissors" }
    local randomIndex = math.random(1, 3)
    return choices[randomIndex]
end

local function determineWinner(playerChoice, computerChoice)
    if playerChoice == computerChoice then
        return "It's a tie"
    elseif (playerChoice == "rock" and computerChoice == "scissors") or
           (playerChoice == "paper" and computerChoice == "rock") or
           (playerChoice == "scissors" and computerChoice == "paper") then
        return "You win"
    else
        return "Computer wins"
    end
end

local playing = true
while playing do
    print("Enter your choice (rock, paper, or scissors): ")
    local playerChoice = io.read()
    playerChoice = playerChoice:lower()  -- Convert the input to lowercase for case-insensitive comparison
    
    if playerChoice == "rock" or playerChoice == "paper" or playerChoice == "scissors" then
        local computerChoice = getComputerChoice()
        print("Computer chooses: " .. computerChoice)
        
        local result = determineWinner(playerChoice, computerChoice)
        print(result)
    else
        print("Invalid choice. Please choose rock, paper, or scissors.")
    end
    
    -- Prompt the player to play again or end the loop
    print("Do you want to play again? (yes/no): ")
    local playAgain = io.read()
    if playAgain:lower() ~= "yes" then
        playing = false
    end
end
