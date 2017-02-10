class SlomoFFAPlayerController extends AOCFFAPlayerController;


//override
exec function StartFire( optional byte FireModeNum ){
	 super.StartFire(FireModeNum);
/**	if ( (Pawn != None) && (UTInventoryManager(Pawn.InvManager) != None) )
	{
		UTInventoryManager(Pawn.InvManager).AllAmmo(true);
		UTInventoryManager(Pawn.InvManager).bInfiniteAmmo = true;
	}*/
	//PrimaryWeapon.AddAmmo(1);

	//AOCInventoryManager(Pawn.InvManager).AddAmmoToWeapon(1, Pawn.Weapon.Class);

	//AOCPawn(Pawn).AddAmmoType(1, AmmoType);

	AOCInventoryManager(Pawn.InvManager).ReplenishAllAmmo();
}