class KismetAct_EnemyMovement extends SequenceAction;

var() array<int> Nodes;
var PEnemyBase Enemy;
var P_AI_EnemyBase EnemyC;

event Activated()
{
	EnemyC=Enemy.Controller;
	Enemy.MoveNow(Nodes[RandRange(0,625)]);
}


DefaultProperties
{
	ObjName="Enemy Movement"
	ObjCategory="Purge"

	bAutoActivateOutputLinks=false
	
	InputLinks.Empty
	InputLinks[0]=(LinkDesc="Start")

	OutputLinks.Empty
	OutputLinks[0]=(LinkDesc="Done")

	VariableLinks.Empty
	VariableLinks[0]=(ExpectedType=class'SeqVar_Object',LinkDesc="Enemy",bWriteable=false,PropertyName=Enemy)
}
