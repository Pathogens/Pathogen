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

var P_AI_EnemyBase EnemyC;

event PostBeginPlay()
{
	super.PostBeginPlay();
	self.SetPhysics(PHYS_Flying);
}


function MoveNow(int NodeIndex)
{
	//EnemyC=Controller;
	Controller<P_AI_EnemyBase>.MoveNow(NodeIndex);
}


DefaultProperties
{
	//Mass=??Float
	CustomGravityScaling=0
	bSimulateGravity=false
	bSimGravityDisabled=true
	ControllerClass=P_AI_EnemyBase

}
