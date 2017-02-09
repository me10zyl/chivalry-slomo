class EBanFFA extends AOCFFA;

function StartRound(){
    super.StartRound();
	WorldInfo.Game.SetGameSpeed(10.0);
}


static event class<GameInfo> SetGameType(string MapName, string Options, string Portal)
{
    //returns this object's own class, so this class is setting itself to be the game type used
    return default.class;
}


DefaultProperties
{
	ModDisplayString="SLOMO"

	// PlayerControllerClass=class'EBanFFAPlayerController'
}