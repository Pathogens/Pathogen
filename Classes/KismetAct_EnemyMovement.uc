class KismetAct_EnemyMovement extends SequenceAction;

var() array<int> Nodes;
var UDKPawn Enemy;

event Activated()
{
	Enemy.Controller.MoveToDirectNonPathPos(PGameInfo(class'WorldInfo'.static.GetWorldInfo().Game).Grid[Nodes[0]]);
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
