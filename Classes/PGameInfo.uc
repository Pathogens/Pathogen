/***************************************
// Author(s): Tyler Keller
// Date: 3/4/2014
// Status: Proto
// Being Used: Yes
// Description: Pathogen game info class.
***************************************/

class PGameInfo extends GameInfo;

var array<Vector> Grid;
var float GX, GY;
var int GL;
var Vector GP;


function GridSetup()
{
	while(Grid.Length<=625){
		if(Grid.Length==GL){
			GL+=25;
			GY+=128;
			GX=-1536;
		}
		GP.X=GX;
		GP.Y=GY;
		GP.Z=0;
		Grid.AddItem(GP);
		GX+=128;
	}
}


static event class<GameInfo> SetGameType(string MapName, string Options, string Portal)
{
    return Default.Class;
}


DefaultProperties
{
	GL=25
	GX=-1536
	GY=-1536
	bDelayedStart=false
	DefaultPawnClass=class'Pathogen.PPawn'
    PlayerControllerClass=class'Pathogen.PPlayerController'
	HUDType=class'Pathogen.PHUD'
}
