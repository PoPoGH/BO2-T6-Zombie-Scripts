init()
{
    setDvar("g_password", ""); // Ensure the server starts without a password.
    level thread checkForRound30();
}

checkForRound30()
{
    while(1)
    {
        if(level.round_number > 30 && getDvar("g_password") == "")
        {
            setDvar("g_password", "round30lockpass"); // Replace "yourpassword" with your desired password
            iprintlnbold("^1Round 30 reached: Server is now locked for new connections.");
            break; // Exit the loop and kill the thread.
        }
        else
        {
            wait 10; // If no changes are needed, wait 10 seconds before checking again.
        }
    }
}