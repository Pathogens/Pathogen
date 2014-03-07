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
	SetPhysics(PHYS_Flying);
	//MotionBlurEffect.FullMotionBlur
}


DefaultProperties
{
	//bReducedSpeed=true //Slows moving paw so it doesnt overshoot destination
	//bForceMaxAccel=??Bool // ignores Acceleration component, and forces max AccelRate to drive Pawn at full velocity.
	//Mass=??Float
	//bNoWeaponFiring=true //May be useful for maula weapon systems
	bSimulateGravity=false //May allow use of GamePawn or Pawn
	bIgnoreForces=true
	bCanJump=true
	bCanFly=true
	BlockRigidBody=true
	bBlockActors=true
	bCollideActors=true
	bCollideWorld=true
	CollisionType=COLLIDE_TouchAll
	CylinderComponent=CollisionCylinder
	//MaxPitchLimit=??Int ;		        // limit on view pitching
	GroundSpeed=1400                    // The maximum ground speed.
	//AirSpeed=1400                     // The maximum flying speed.
	//AirControl=??Float                // amount of AirControl available to the pawn
	//MovementSpeedModifier=??Float     // a modifier that can be used to override the movement 
	AccelRate=10000                     // max acceleration rate

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
	//CustomGravityScaling=0
	//SimGravityDisabled=true
	//bSimulateGravity=false
}
