# Round Lock Script for Call of Duty: Black Ops 2 Zombies

## Description

This script is designed to automatically set a server password when the round number in a Zombies game reaches 30 or higher. This can be helpful for limiting access to the game when attempting high-round records.

## Installation

1. Make sure you have Plutonium for Call of Duty: Black Ops 2 installed.
2. Place the script in the following directory: AppData\Local\Plutonium\storage\t6\scripts\zm


## Usage

1. Start or restart your T6 Server.
2. The script will run in the background, waiting for the round to reach 30 or higher.
3. When the round exceeds 30, the script will set a server password defined in the script (change `"round30more"` to your desired password).
4. Players attempting to join after round 30 will need to enter the specified password.
5. The password will be cleared if the round goes back to 30 or lower.

## Author

PoPoFR

## License

This script is free to use and edit.

Happy zombie slaying!


