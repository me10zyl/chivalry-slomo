class SlomoFFAPlayerController extends AOCFFAPlayerController;


//override
exec function StartFire( optional byte FireModeNum ){
	 super.StartFire(FireModeNum);
	if ( (Pawn != None) && (UTInventoryManager(Pawn.InvManager) != None) )
	{
		UTInventoryManager(Pawn.InvManager).AllAmmo(true);
		UTInventoryManager(Pawn.InvManager).bInfiniteAmmo = true;
	}
}