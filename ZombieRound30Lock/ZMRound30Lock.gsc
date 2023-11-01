init()
{
    level thread onPlayerConnect();
    level thread checkForRound30();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
    }
}

checkForRound30()
{
    while(1)
    {
        if(level.round_number > 30 && getDvar("g_password") == "")
        {
            setDvar("g_password", "yourpassword"); // Replace "yourpassword" with your desired password
            iprintlnbold("^1Round 30 reached: Server is now locked for new connections.");
            wait 60; // Wait 60 seconds before checking again
        }
        else if(level.round_number <= 30 && getDvar("g_password") != "")
        {
            setDvar("g_password", ""); // If the round is below 30 (in case you roll back rounds or restart), this will remove the password.
            iprintlnbold("^2Server is now unlocked for new connections.");
            wait 10; // Wait 10 seconds before checking again
        }
        else
        {
            wait 10; // If no changes are needed, wait 10 seconds before checking again.
        }
    }
}