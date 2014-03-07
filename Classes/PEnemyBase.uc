/***************************************
// Author(s): Tyler Keller
// Date: 3/7/2014
// Status: Proto
// Being Used: Yes
// Description: Base enemy pawn class.
***************************************/

class PEnemyBase extends UDKPawn
	dependson(PPawn)
	placeable;

event PostBeginPlay()
{
	super.PostBeginPlay();
	self.SetPhysics(PHYS_Flying);
}


DefaultProperties
{
	//Mass=??Float
	CustomGravityScaling=0
	bSimulateGravity=false
	bSimGravityDisabled=true

}
