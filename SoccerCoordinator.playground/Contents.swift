//arrays to hold the player names
var dragons : [String] = []
var sharks : [String] = []
var raptors : [String] = []

//list of players to be sorted in a dictionary of an array of tuples
let players : [String:(height: Int, experience: Bool, parent: String)] = [
    "Joe Smith":(42,true,"Jim and Jan Smith"),
    "Jill Tanner":(36,true,"Clara Tanner"),
    "Bill Bon":(43,true,"Sara and Jenny Bon"),
    "Eva Gordon":(45,false,"Wendy and Mike Gordon"),
    "Matt Gill":(40,false,"Charles and Sylvia Gill"),
    "Kimmy Stein":(41,false,"Bill and Hillary Stein"),
    "Sammy Adams":(45,false,"Jeff Adams"),
    "Karl Saygan":(42,true,"Heather Bledsoe"),
    "Suzane Greenberg":(44,true,"Henrietta Dumas"),
    "Sal Dali":(41,false,"Gala Dali"),
    "Joe Kavalier": (39,false,"Sam and Elaine Kavalier"),
    "Ben Finkelstein":(44,false,"Aaron and Jill Finkelstein"),
    "Diego Soto":(41, true,"Roban and Sarika Soto"),
    "Chloe Alaska":(47,false,"David and Jamie Alaska"),
    "Arnold Willis":(43,false,"Claire Willis"),
    "Phillip Helm":(33,true,"Thomas Helm and Eva Jones"),
    "Les Clay":(42,true,"Wynonna Brown"),
    "Herschel Krustofski":(45,true,"Hymen and Rachel Krustofski")]

//function to add players to the arrays or "teams"
var name = ""

func addPlayer(player: String){

    if(dragons.count <= sharks.count && dragons.count <= raptors.count){
        dragons.append(player)
        name = "dragons"
    } else if (sharks.count <= dragons.count && sharks.count <= raptors.count){
        sharks.append(player)
        name = "sharks"
    } else if (raptors.count <= dragons.count && raptors.count <= sharks.count){
        raptors.append(player)
        name = "raptors"
    }
}

//sends a letter to the respective player's parents

func sendLetter(parent: String, child: String, team: String){
    print("Dear \(parent),\n")
    print("Your child, \(child) has been drafted to the \(team) and we would like to discuss the signing of their contract\n")
    var str = ""
    if(team == "dragons"){
        str = "March 17, 1:00 pm"
    } else if (team == "sharks"){
        str = "March 17 at 3:00 pm"
    } else {
        str = "March 18 at 1:00 pm"
    }
    print("Your scheduled practice time is \(str)\n")
    print("Thank you,\n\nThe Boss\n\n")
}


//iterates through the experienced players and adds them to the teams
for player in players {
    
    if(player.1.experience == true){
        addPlayer(player.0)
        sendLetter(player.0, child: player.1.parent, team: name)

    }
}

//iterates through the inexperienced players and adds them to the teams
for player in players {
    
    if(player.1.experience == false){
        addPlayer(player.0)
        sendLetter(player.0, child: player.1.parent, team: name)
    }
    

}
