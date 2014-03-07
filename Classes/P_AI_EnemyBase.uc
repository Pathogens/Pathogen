/***************************************
// Author(s): Tyler Keller
// Date: 3/7/2014
// Status: Proto
// Being Used: Yes
// Description: Base enemy controller class.
***************************************/

class P_AI_EnemyBase extends UDKBot;


event Possess(Pawn inPawn, bool bVehicleTransition)
{
    super.Possess(inPawn, bVehicleTransition);
    //Pawn.SetMovementPhysics(); //Only affects Swimming and FAlling
	Pawn.SetPhysics(PHYS_Flying);
}


event Tick(float DeltaTime)
{
	//self.MoveToDirectNonPathPos(
}


DefaultProperties
{
		
}
