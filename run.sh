#!/bin/bash

# Run the first command
echo "Running the first command..."
cd server && sudo java -jar server.jar

# Open a new terminal and run the second command
echo "Opening a new terminal and running the second command..."
tmux new-session -d -s mysession "cd bungee && sudo java -jar bungee.jar; exec bash"

# Set two ports to public
echo "Setting ports to public..."
gh codespace ports visibility 8081:public 25565:public

echo "All tasks completed!"