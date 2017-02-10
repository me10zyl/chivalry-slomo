class SlomoFFA extends AOCFFA;

function StartRound(){
    super.StartRound();
	WorldInfo.Game.SetGameSpeed(10000.0);
}

function SetGameSpeed(Float T)
{
	local float UTTimeDilation;
     super.SetGameSpeed(T);	
	 UTTimeDilation = bConsoleServer ? 0.95 : 1.05;
	 GameSpeed = FMax(T, 0.00001);
	 WorldInfo.TimeDilation = UTTimeDilation * GameSpeed;
	 SetTimer(WorldInfo.TimeDilation, true);
}


static event class<GameInfo> SetGameType(string MapName, string Options, string Portal)
{
    //returns this object's own class, so this class is setting itself to be the game type used
    return default.class;
}


DefaultProperties
{
	ModDisplayString="SLM"

	PlayerControllerClass=class'SlomoFFAPlayerController'
}