/***************************************
// Author(s): Tyler Keller
// Date: 3/4/2014
// Status: Proto
// Being Used: Yes
// Description: Pathogen game info class.
***************************************/

class PGameInfo extends GameInfo;


static event class<GameInfo> SetGameType(string MapName, string Options, string Portal)
{
    return Default.Class;
}


DefaultProperties
{
	bDelayedStart=false
	DefaultPawnClass=class'Pathogen.PPawn'
    PlayerControllerClass=class'Pathogen.PPlayerController'
	HUDType=class'Pathogen.PHUD'
}
