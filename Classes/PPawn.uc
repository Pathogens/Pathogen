/***************************************
// Author(s): Tyler Keller
// Date: 3/4/2014
// Status: Proto
// Being Used: Yes
// Description: Standard player class.
***************************************/

class PPawn extends UDKPawn;


event PostBeginPlay()
{
	super.PostBeginPlay();
	Mesh.SetActorCollision(true, true); // enable PhysicsAsset collision
	Mesh.SetTraceBlocking(true, true); // block traces (i.e. anything touching mesh)
}


DefaultProperties
{
	bCanJump=true
	bCanFly=true
	BlockRigidBody=true
	bBlockActors=true
	bCollideActors=true
	bCollideWorld=true
	CollisionType=COLLIDE_TouchAll
	CylinderComponent=CollisionCylinder
	GroundSpeed=1400
	AccelRate=10000

    Begin Object Class=DynamicLightEnvironmentComponent Name=MyLightEnvironment
            bEnabled=TRUE
    End Object
    Components.Add(MyLightEnvironment)

    Begin Object Class=SkeletalMeshComponent Name=BasePlayerMesh
            //SkeletalMesh=SkeletalMesh'MyMesh.SkeletalMesh.PlayerModel_BF'
			//PhysicsAsset=PhysicsAsset'BloodFalcon.SkeletalMesh.Player_Physics'
			Scale=0.7
            HiddenGame=FALSE
            HiddenEditor=FALSE
			BlockNonZeroExtent=true
			BlockZeroExtent=true
			BlockActors=true
			CollideActors=true
            LightEnvironment=MyLightEnvironment
    End Object
    Components.Add(BasePlayerMesh)
	Mesh=BasePlayerMesh
	CustomGravityScaling=0
}
