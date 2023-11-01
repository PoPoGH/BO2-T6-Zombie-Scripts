init()
{
    // Initialize the script
    level thread onPlayerConnect(); // Start the 'onPlayerConnect' thread
    level thread checkForRound30(); // Start the 'checkForRound30' thread
}

onPlayerConnect()
{
    // Continuously wait for player connections
    for(;;)
    {
        level waittill("connected", player); // Wait for a player to connect
    }
}

checkForRound30()
{
    // Continuously check if the current round is greater than 30
    while(1)
    {
        if(level.round_number > 30)
        {
            setDvar("g_password", "round30more"); // Set the server password to "round30more" when round is greater than 30
            wait 60; // Wait for 60 seconds before checking again
        }
        else
        {
            setDvar("g_password", ""); // If the round is less than or equal to 30, clear the server password
            wait 10; // Wait for 10 seconds before checking again
        }
    }
}
