---------------------------------------------------------------------------------------------------
-- func: updateservermessage
-- auth: <Unknown>
-- desc: Updates the server message if it has been edited.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = ""
};

function onTrigger(player)
    UpdateServerMessage();
end